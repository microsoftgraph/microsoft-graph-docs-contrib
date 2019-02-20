
# Microsoft Graph SDK for ObjC


This client library is a release candidate and is still in preview status - please continue to provide feedback as we iterate towards a production supported library.



This library supports both iOS and MacOS platforms.



## Installation


### Using CocoaPods

You can use [CocoaPods](https://cocoapods.org/) to remain up to date with our latest version. Include the following line in your podfile:
  ``` 
   pod 'MSGraphClientSDK'
  ```


### Using Carthage



You can also chose to use [Carthage](https://github.com/Carthage/Carthage) for package management.



1. Install Carthage on your Mac using a download from their website or if using Homebrew `brew install carthage`.

2. You must create a `Cartfile` that lists the MSGraphClientSDK library for this project on Github.



```

github "microsoftgraph/msgraph-sdk-objc" "tags/<latest_release_tag>"

```



3. Run `carthage update`. This will fetch dependencies into a `Carthage/Checkouts` folder, then build the MSGraphClientSDK library.

4. On your application target's “General” settings tab, in the “Linked Frameworks and Libraries” section, drag and drop the `MSGraphClientSDK.framework` from the `Carthage/Build` folder on disk.

5. On your application target's “Build Phases” settings tab, click the “+” icon and choose “New Run Script Phase”. Create a Run Script in which you specify your shell (ex: `/bin/sh`), add the following contents to the script area below the shell:



```sh

/usr/local/bin/carthage copy-frameworks

```



and add the paths to the frameworks you want to use under “Input Files”, e.g.:



```

$(SRCROOT)/Carthage/Build/iOS/MSGraphClientSDK.framework

```

This script works around an [App Store submission bug](http://www.openradar.me/radar?id=6409498411401216) triggered by universal binaries and ensures that necessary bitcode-related files and dSYMs are copied when archiving.



With the debug information copied into the built products directory, Xcode will be able to symbolicate the stack trace whenever you stop at a breakpoint. This will also enable you to step through third-party code in the debugger.



When archiving your application for submission to the App Store or TestFlight, Xcode will also copy these files into the dSYMs subdirectory of your application’s `.xcarchive` bundle.



## Prerequisites

Each network call to Microsoft Graph needs to be authenticated. For that purpose, creation of an instance of MSHTTPClient takes an MSAuthenticationProvider protocol's instance as parameter.

You can create the MSAuthenticationProvider instance via two ways:

### Using [MSGraphMSALAuthProvider](https://github.com/microsoftgraph/msgraph-sdk-objc-auth)

This repo handles the authentication scenarios via [MSAL](https://github.com/AzureAD/microsoft-authentication-library-for-objc)

### By writing your own implmentation of MSAuthenticationProvider

You can also chose to handle authentication via any means that suits your needs. You need to follow below steps so that this SDK can interact with your authentication mechanism.

1. After integrating the SDK, you will have to provide implmentation for MSAuthenticationProvider by creating a new file.

2. In this file, write an implmentation for below method of MSAuthenticationProvider

```

- (void) getAccessTokenWithCompletion:(void (^)(NSString *accessToken, NSError *error))completion;

```

This implmentation should be able to talk to your authentication mechanism in order to get the access token or any error which occurred during the process and return it in completion block.

## How to use SDK



Assuming you have gone thorugh the above steps, you will now have :



1. A .xcworkspace file integrated with MSGraphClientSDK pod or MSGraphClientSDK.framework integrated in your project. 



2. Instance of a class implementing MSAuthenticationProvider protocol.



After above steps, you need to follow below steps:



1. Create an instance of MSHTTPClient from MSClientFactory in below fashion:

```

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

```

2. Configure a native request object which might look like something below:

```

NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me"]]];

```

3. Create an MSURLSessionTask (in case of our example a DataTask) object with the help of MSHTTPClient in below fashion and call execute on it:

```

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest

completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {

//Do something

}];

[meDataTask execute];

```



And that's it. You have now successfully made call to graph server asking information about the user.

## Usage Resources

* [Batching](/Docs/Content/Batching.md)
