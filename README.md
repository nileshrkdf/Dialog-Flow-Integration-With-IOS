# Dialogflow Sample

This app demonstrates how to make gRPC connections to the [Dialogflow API](https://cloud.google.com/dialogflow-enterprise/)

The app demonstrates how to connect Dialof flow with iOS 

To call the Dialogflow API from iOS, you need to provide authorization tokens with each request for them to be accepted by the Dialogflow API. To get this token, i am using ServiceAccountTokenProvider class and passing private key.

## Prerequisites
- An OSX machine or simulator
- [Xcode 10][xcode] or higher
- [Cocoapods][cocoapods]

## Setup
- Create agent in the dialog flow (https://www.youtube.com/watch?v=EP3K-Pk_a7g&list=PLTRHDhavoEIZoHzecGl1hpOJqpf0aAv2d)
- Download private key for dialog flow integration (https://www.youtube.com/watch?v=iwSgNNeU_9c)

### Setup the app
- Clone this repository `https://github.com/nileshrkdf/Dialog-Flow-Integration-With-IOS.git` 
- `cd Dialog-Flow-Integration-With-IOS/` 
- Run `./INSTALL-COCOAPODS` to install app dependencies (this can take a long time to run). When it finishes, it will open the Covid-19 workspace in Xcode. Since we are using Cocoapods, be sure to open the `Covid-19.xcworkspace` and not `Covid-19.xcodeproj`.
- Replace `your-project-identifier` in `ApplicationConstants.swift` with the identifier of your Google Cloud project for "ProjectName" varaiable. Right now it is my project identifier
- Add private key .json file in the project
- update the file name in the initateAuthentication() method



## Run the app
- You are now ready to build and run the project. 

## Reference 
- https://github.com/GoogleCloudPlatform/ios-docs-samples ( I have modify this code as it is using firebase to get the auth token & little complicated)
