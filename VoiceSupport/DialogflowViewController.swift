//
// Copyright 2019 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import UIKit
import AVFoundation
import googleapis
import AuthLibrary

class DialogflowViewController: UIViewController {
    var audioData: NSMutableData!
    var listening: Bool = false
    var isFirst: Bool = true
    var tableViewDataSource = [[String: String]]()
    var tokenV = ""
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var audioButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
        
    /// New addition by Nilesh
    var avPlayer: AVAudioPlayer?
    var speakingAnimation: ListenerAnimation?
    var listeningAnimation: ListenerAnimation?
    var animationView: UIView?
    var timer: Timer?
    @IBOutlet weak var CovidLabel: UILabel!
    @IBOutlet weak var agentStatus: UILabel!
    
    //init with coder
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //init with nib name
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
      super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StopwatchService.sharedInstance.delegate = self
        //Audio Controller initialization
        AudioController.sharedInstance.delegate = self
        self.speakingAnimation = ListenerAnimation.init()
        self.animationView = UIView.init(frame: CGRect(x: self.view.frame.origin.x, y: self.view.frame.size.height - 200, width: self.view.frame.size.width, height: 100))
        self.view.addSubview(self.animationView!)
        self.view.bringSubviewToFront(self.animationView!)
        self.listeningAnimation = ListenerAnimation.init()
        self.listeningAnimation?.animation = "4380-processing"
        self.speakingAnimation?.animation = "23194-chat-bot-loader"
        self.agentStatus.text = "Waiting to connect"
        self.audioButton.setImage(UIImage.init(named: "Mute"), for: .normal)
        self.initateAuthentication()
        self.CovidLabel.layer.shadowColor = UIColor.red.cgColor
        self.CovidLabel.layer.shadowOpacity = 1
        self.CovidLabel.layer.shadowOffset = .zero
        self.CovidLabel.layer.shadowRadius = 10
        self.audioButton.layer.borderColor = UIColor.black.cgColor
        self.audioButton.layer.borderWidth = 2
        self.audioButton.layer.cornerRadius = 20
    }
  
    /// New addition by Nilesh
    /// Method to perform the authentication & getting token
    @objc func initateAuthentication() {
        if let path = Bundle.main.path(forResource: "Covid-19", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let serviceAccount = ServiceAccountTokenProvider.init(credentialsData: data, scopes: ["https://www.googleapis.com/auth/cloud-platform"])
                try serviceAccount?.withToken{token, error in
                    self.tokenV = (token?.TokenType)! + " " + (token?.AccessToken!)!
                    StopwatchService.sharedInstance.authToken = self.tokenV
                    _ = AudioController.sharedInstance.prepare(specifiedSampleRate: ApplicationConstants.SampleRate)
                    StopwatchService.sharedInstance.dialogFlowEventCommunication(eventName: "Welcome")
                }
            } catch {
                // handle error
            }
        }
    }
        
    //Action to stat microphone for speech chat
    @IBAction func didTapMicrophone(_ sender: Any) {
        if !self.listening {
            self.startListening()
        }
        else {
            self.stopListeningByButtonTap()
        }
    }

    @IBAction func didTapCancelButton(_ sender: Any) {
        DispatchQueue.global().async {
          self.stopListening()
        }
    }  
}

//MARK: helper functions
extension DialogflowViewController {
    func handleError(error: Error) {
        tableViewDataSource.append([ApplicationConstants.botKey: error.localizedDescription])
        tableView.insertRows(at: [IndexPath(row: tableViewDataSource.count -  1, section: 0)], with: .automatic)
        tableView.scrollToBottom()
    }
}

extension DialogflowViewController: AudioControllerDelegate {
    
    /// Microphone start listening
    /// Method updated by Nilesh
    func startListening() {
        self.agentStatus.text = "Listening"
        self.audioButton.setImage(UIImage.init(named: "Mic1"), for: .normal)
        listening = true
        cancelButton.isHidden = false
        audioData = NSMutableData()
        self.speakingAnimation?.removeView()
        let animationV = (self.listeningAnimation?.getAnimationView())!
//        animationV.frame.origin.x = 300
//        self.listeningAnimation?.animationView.frame.origin.x = 0
        self.animationView!.addSubview(animationV)
        self.listeningAnimation?.startAnimation()
        self.animationView!.bringSubviewToFront(animationV)
        _ = AudioController.sharedInstance.prepare(specifiedSampleRate: ApplicationConstants.SampleRate)
        StopwatchService.sharedInstance.sampleRate = ApplicationConstants.SampleRate
        _ = AudioController.sharedInstance.start()
        self.timer?.invalidate()
        self.timer = Timer.scheduledTimer(withTimeInterval: 8,
            repeats: false) {
                timer in
                self.pausingAgent()
        }
    }
  
    /// Microphone stops listening
    /// Method updated by Nilesh
    func stopListening() {
        self.avPlayer?.stop()
        DispatchQueue.main.async {
            self.audioButton.setImage(UIImage.init(named: "Mute"), for: .normal)
            self.cancelButton.isHidden = true
            _ = AudioController.sharedInstance.stop()
            StopwatchService.sharedInstance.stopStreaming()
            self.listening = false
            self.startListening()
        }
    }
    
    /// Microphone stops listening
    /// Method updated by Nilesh
    func stopListeningByButtonTap() {
          DispatchQueue.main.async {
              self.audioButton.setImage(UIImage.init(named: "Mute"), for: .normal)
              self.cancelButton.isHidden = true
              _ = AudioController.sharedInstance.stop()
              StopwatchService.sharedInstance.stopStreaming()
              self.listening = false
          }
    }
  
  //Process sample data
  func processSampleData(_ data: Data) -> Void {
    audioData.append(data)
    // We recommend sending samples in 100ms chunks
    let chunkSize : Int /* bytes/chunk */ =
      Int(0.1 /* seconds/chunk */
        * Double(ApplicationConstants.SampleRate) /* samples/second */
        * 2 /* bytes/sample */);
    //Handling the response by the agent eg. showing the quertText, fulfillmentText, and also
    //if user has selected TTS then playing the response audio
    if (audioData.length > chunkSize) {
      StopwatchService.sharedInstance.streamAudioData(
        audioData,
        completion: { [weak self] (response, error) in
          
          guard let strongSelf = self else {
            return
          }
          if let error = error, !error.localizedDescription.isEmpty {
            strongSelf.handleError(error: error)
          } else if let response = response {
            if !response.recognitionResult.transcript.isEmpty {
              if strongSelf.isFirst{
                strongSelf.tableViewDataSource.append([ApplicationConstants.selfKey: response.recognitionResult.transcript])
                strongSelf.tableView.insertRows(at: [IndexPath(row: strongSelf.tableViewDataSource.count - 1, section: 0)], with: .automatic)
                strongSelf.isFirst = false
              }else {
                strongSelf.tableViewDataSource.removeLast()
                strongSelf.tableViewDataSource.append([ApplicationConstants.selfKey: response.recognitionResult.transcript])
                strongSelf.tableView.reloadRows(at: [IndexPath(row: strongSelf.tableViewDataSource.count - 1, section: 0)], with: .automatic)
              }
            }
            if let recognitionResult = response.recognitionResult {
              if recognitionResult.isFinal {
                strongSelf.isFirst = true
              }
            }
            if !response.queryResult.queryText.isEmpty {
              strongSelf.tableViewDataSource.removeLast()
              strongSelf.tableViewDataSource.append([ApplicationConstants.selfKey: response.queryResult.queryText])
              strongSelf.tableView.reloadRows(at: [IndexPath(row: strongSelf.tableViewDataSource.count -  1, section: 0)], with: .automatic)
            }
            var text = ""
            if !response.queryResult.fulfillmentText.isEmpty {
              text = response.queryResult.fulfillmentText ?? ""
              if response.queryResult.fulfillmentMessagesArray_Count > 0, let lastTextObj = response.queryResult.fulfillmentMessagesArray.lastObject as? DFIntent_Message, let finalText = lastTextObj.text.textArray.lastObject as? String {
                text = finalText
              }
            } else if response.queryResult.hasKnowledgeAnswers, response.queryResult.knowledgeAnswers.answersArray_Count > 0, let lastKnowledgeAnswer = response.queryResult.knowledgeAnswers.answersArray.lastObject as? DFKnowledgeAnswers_Answer, let finalText = lastKnowledgeAnswer.answer{
              text = finalText
            }
            if !text.isEmpty {
              if response.queryResult.hasSentimentAnalysisResult {
                text += "\nSentiment score:\(response.queryResult.sentimentAnalysisResult.queryTextSentiment.score)"
                text += "\nSentiment magnitude:\(response.queryResult.sentimentAnalysisResult.queryTextSentiment.magnitude)"
              }
              strongSelf.tableViewDataSource.append([ApplicationConstants.botKey: text])
              strongSelf.tableView.insertRows(at: [IndexPath(row: strongSelf.tableViewDataSource.count - 1, section: 0)], with: .automatic)
            }
            if response.hasOutputAudioConfig, let audioOutput = response.outputAudio {
                self?.listeningAnimation?.removeView()
                self?.agentStatus.text = "Speaking"
                self?.animationView!.addSubview((self?.speakingAnimation?.getAnimationView())!)
                self?.speakingAnimation?.startAnimation()
                self?.animationView!.bringSubviewToFront((self?.speakingAnimation?.getAnimationView())!)
                self?.timer?.invalidate()
                self?.audioPlayerFor(audioData: audioOutput)
            }
            strongSelf.tableView.scrollToBottom()
          }
      })
      self.audioData = NSMutableData()
    }
  }
}



//MARK: Textfield delegate
extension DialogflowViewController: UITextFieldDelegate, AVAudioPlayerDelegate {
    
    /// Method Added by Nilesh
    func pausingAgent() {
        self.agentStatus.text = "Agent stopped Listening tap to activate again"
        self.audioButton.setImage(UIImage.init(named: "Disable"), for: .normal)
        self.listening = false
        self.listeningAnimation?.removeView()
        self.cancelButton.isHidden = true
        _ = AudioController.sharedInstance.stop()
        StopwatchService.sharedInstance.stopStreaming()
    }
    
    func audioPlayerFor(audioData: Data) {
        DispatchQueue.main.async {
          do {
            self.timer?.invalidate()
            try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setActive(true, options: [])
            self.avPlayer = try AVAudioPlayer(data: audioData)
            self.avPlayer?.delegate = self
            self.avPlayer?.play()
          } catch let error {
            print("Error occurred while playing audio: \(error.localizedDescription)")
          }
        }
    }
    
    /// Method updated by Nilesh
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        self.timer?.invalidate()
        self.timer = Timer.scheduledTimer(withTimeInterval: 8,
            repeats: false) {
                timer in
                self.pausingAgent()
        }
        self.stopListening()
    }
    
    func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
        print("Error in Listening")
    }
    
    func audioPlayerBeginInterruption(_ player: AVAudioPlayer) {
        print("audioPlayerBeginInterruption")
    }
    
    func audioPlayerEndInterruption(_ player: AVAudioPlayer, withOptions flags: Int) {
         print("audioPlayerEndInterruption")
    }
}

// MARK: Table delegate handling
extension DialogflowViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = tableViewDataSource[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data[ApplicationConstants.selfKey] != nil ? "selfCI" : "intentCI", for: indexPath) as! ChatTableViewCell
        if data[ApplicationConstants.selfKey] != nil {
          cell.selfText.text = data[ApplicationConstants.selfKey]
        } else {
          cell.botResponseText.text = data[ApplicationConstants.botKey]
        }
        return cell
    }
}

extension UITableView {
  func  scrollToBottom(animated: Bool = true) {
    let sections = self.numberOfSections
    let rows = self.numberOfRows(inSection: sections - 1)
    if (rows > 0) {
      self.scrollToRow(at: NSIndexPath(row: rows - 1, section: sections - 1) as IndexPath, at: .bottom, animated: true)
    }
  }
}


extension DialogflowViewController: StopwatchServiceProtocol {
    
    /// Method updated by Nilesh
    func didReceiveTextResponse(response: DFDetectIntentResponse?, error: NSError?) {
        if let error = error, !error.localizedDescription.isEmpty {
          handleError(error: error)
        } else if let response = response {
          if response.hasOutputAudioConfig {
            if let audioOutput = response.outputAudio {
                self.listeningAnimation?.removeView()
                self.agentStatus.text = "Speaking"
                let animationV = (self.speakingAnimation?.getAnimationView())!
//                self.speakingAnimation?.animationView.frame.origin.x = 0
                self.animationView!.addSubview(animationV)//
                self.speakingAnimation?.startAnimation()
                self.animationView!.bringSubviewToFront(animationV)
                audioPlayerFor(audioData: audioOutput)
            }
          }
          if !response.queryResult.queryText.isEmpty && response.queryResult.queryText != "Welcome" {
            tableViewDataSource.append([ApplicationConstants.selfKey: response.queryResult.queryText])
            tableView.insertRows(at: [IndexPath(row: tableViewDataSource.count - 1, section: 0)], with: .automatic)
          }
          var text = ""
          if !response.queryResult.fulfillmentText.isEmpty {
            text = response.queryResult.fulfillmentText ?? ""
            if response.queryResult.fulfillmentMessagesArray_Count > 0, let lastTextObj = response.queryResult.fulfillmentMessagesArray.lastObject as? DFIntent_Message, let finalText = lastTextObj.text.textArray.lastObject as? String {
              text = finalText
            }
          } else if response.queryResult.hasKnowledgeAnswers, response.queryResult.knowledgeAnswers.answersArray_Count > 0, let lastKnowledgeAnswer = response.queryResult.knowledgeAnswers.answersArray.lastObject as? DFKnowledgeAnswers_Answer, let finalText = lastKnowledgeAnswer.answer{
            text = finalText
          }
          if response.queryResult.hasSentimentAnalysisResult {
            text += "\nSentiment score:\(response.queryResult.sentimentAnalysisResult.queryTextSentiment.score)"
            text += "\nSentiment magnitude:\(response.queryResult.sentimentAnalysisResult.queryTextSentiment.magnitude)"
          }
          tableViewDataSource.append([ApplicationConstants.botKey: text])
          tableView.insertRows(at: [IndexPath(row: tableViewDataSource.count - 1, section: 0)], with: .automatic)
          tableView.scrollToBottom()
        }
      }
    
    func didReceiveAudioInputResponse(response: DFStreamingDetectIntentResponse?, error: NSError?) {
        if let error = error, !error.localizedDescription.isEmpty {
          handleError(error: error)
        } else if let response = response {
          if !response.recognitionResult.transcript.isEmpty {
            if isFirst{
              tableViewDataSource.append([ApplicationConstants.selfKey: response.recognitionResult.transcript])
              tableView.insertRows(at: [IndexPath(row: tableViewDataSource.count - 1, section: 0)], with: .automatic)
              isFirst = false
            }else {
              tableViewDataSource.removeLast()
              tableViewDataSource.append([ApplicationConstants.selfKey: response.recognitionResult.transcript])
              tableView.reloadRows(at: [IndexPath(row: tableViewDataSource.count - 1, section: 0)], with: .automatic)
            }
          }
          if let recognitionResult = response.recognitionResult {
            if recognitionResult.isFinal {
              stopListening()
              isFirst = true
            }
          }
          if !response.queryResult.queryText.isEmpty {
            tableViewDataSource.removeLast()
            tableViewDataSource.append([ApplicationConstants.selfKey: response.queryResult.queryText])
            tableView.reloadRows(at: [IndexPath(row: tableViewDataSource.count -  1, section: 0)], with: .automatic)
          }
          var text = ""
          if !response.queryResult.fulfillmentText.isEmpty {
            text = response.queryResult.fulfillmentText ?? ""
            if response.queryResult.fulfillmentMessagesArray_Count > 0, let lastTextObj = response.queryResult.fulfillmentMessagesArray.lastObject as? DFIntent_Message, let finalText = lastTextObj.text.textArray.lastObject as? String {
              text = finalText
            }

          } else if response.queryResult.hasKnowledgeAnswers, response.queryResult.knowledgeAnswers.answersArray_Count > 0, let lastKnowledgeAnswer = response.queryResult.knowledgeAnswers.answersArray.lastObject as? DFKnowledgeAnswers_Answer, let finalText = lastKnowledgeAnswer.answer{
            text = finalText
          }
          if !text.isEmpty {
            if response.queryResult.hasSentimentAnalysisResult {
              text += "\nSentiment score:\(response.queryResult.sentimentAnalysisResult.queryTextSentiment.score)"
              text += "\nSentiment magnitude:\(response.queryResult.sentimentAnalysisResult.queryTextSentiment.magnitude)"
            }
            self.tableViewDataSource.append([ApplicationConstants.botKey: text])
            self.tableView.insertRows(at: [IndexPath(row: self.tableViewDataSource.count - 1, section: 0)], with: .automatic)
          }
          if response.hasOutputAudioConfig, let audioOutput = response.outputAudio {
            audioPlayerFor(audioData: audioOutput)
          }
          tableView.scrollToBottom()
        }
    }
}
