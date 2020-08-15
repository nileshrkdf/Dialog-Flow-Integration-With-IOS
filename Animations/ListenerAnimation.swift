//
//  ListenerAnimation.swift
//  Covid-19
//
//  Created by Nilesh Malviya on 8/11/20.
//  Copyright © 2020 Nilesh Malviya. All rights reserved.
//

import UIKit
import Lottie

class ListenerAnimation: UIViewController {
    let animationView = AnimationView()
    var animation: String?
    
    override func viewDidLoad() {
      super.viewDidLoad()
        let animation = Animation.named(self.animation!, subdirectory: nil)
        animationView.animation = animation
        animationView.animationSpeed = 0.7
        animationView.contentMode = .scaleAspectFit
        view.addSubview(animationView)
        animationView.frame.origin.x = 0
        animationView.frame.origin.y = 0
        animationView.frame.size.width = self.view.frame.size.width
        animationView.frame.size.height = 100
        animationView.backgroundBehavior = .pauseAndRestore
    }
    public func getAnimationView() -> UIView{
        self.view.addSubview(animationView)
        return view
    }
    public func removeView() {
        animationView.removeFromSuperview()
    }
    public func startAnimation() {
        animationView.play(fromProgress: 0, toProgress: 1,loopMode: LottieLoopMode.loop,
                              completion: { (finished) in
                               if finished {
                                 print("Animation Complete")
                               } else {
                                 print("Animation cancelled")
                               }
        })
    }
}
