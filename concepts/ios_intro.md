# Get started with Microsoft Graph in an iOS App

> **Building apps for enterprise customers?** Your app may not work if your enterprise customer turns on enterprise mobility security features like <a href="https://azure.microsoft.com/en-us/documentation/articles/active-directory-conditional-access-device-policies/" target="_newtab">conditional device access</a>. In this case, you may not know and your customers may experience errors. 

> To support **all enterprise customers** across **all enterprise scenarios**, you must use the Azure AD endpoint and manage your apps using the [Azure Management Portal](https://aka.ms/aadapplist). For more information, see [Deciding between the Azure AD and Azure AD v2.0 endpoints](../concepts/auth_overview.md#deciding-between-the-azure-ad-and-azure-ad-v20-endpoints).

This article describes the tasks required to get an access token from the [Azure AD v2.0 endpoint](https://developer.microsoft.com/en-us/graph/docs/concepts/converged_auth) and call Microsoft Graph. It walks you through the code inside the [Office 365 Connect Sample for iOS (SDK)](https://github.com/microsoftgraph/ios-objectivec-connect-sample) to explain the main concepts that you have to implement in an app that uses Microsoft Graph. It describes how to access Microsoft Graph by using the [Microsoft Graph SDK for iOS](https://github.com/microsoftgraph/msgraph-sdk-ios).

You can download the version of the app that you'll create from this GitHub repo:

* [Office 365 Connect Sample for iOS Using the Microsoft Graph SDK](https://github.com/microsoftgraph/ios-objectivec-connect-sample)

The following image shows the app you'll create.

![Connect sample walkthrough, shows connecting and sending a mail in the app](./images/iOSConnectWalkthrough.png)


The workflow will be to connect/authenticate to Microsoft Graph, sign in with your work or personal account, and finally send a mail to a recipient.

**Don't feel like building an app?** Use the [Microsoft Graph quick start](https://graph.microsoft.io/en-us/getting-started) to get up and running fast.

## Prerequisites

To get started, you'll need: 

* [Xcode](https://developer.apple.com/xcode/downloads/) from Apple
* Installation of [CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html) as a dependency manager
* A [Microsoft account](https://www.outlook.com/) or a [work or school account](http://dev.office.com/devprogram)
* The [Microsoft Graph Starter Project for iOS](https://github.com/microsoftgraph/ios-objectivec-connect-sample). This template contains classes that you'll add code to. To get this project, clone or download the sample project from this location, and you'll work with the workspace inside the **starter-project** folder (**ios-objectivec-connect-sample.xcworkspace**).

## Register the app
 
1. Sign into the [App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.
2. Select **Add an app**.
3. Enter a name for the app, and select **Create application**.
	
	The registration page displays, listing the properties of your app.
 
4. Under **Platforms**, select **Add platform**.
5. Select **Native platform**.
6. Copy the Client Id to the clipboard. You'll need to enter this value into the sample app.

	The app id is a unique identifier for your app. 

7. Select **Save**.

## Importing the project dependencies

1. Clone this repository, [Office 365 Connect Sample for iOS Using the Microsoft Graph SDK](https://github.com/microsoftgraph/ios-objectivec-connect-sample). 
>IMPORTANT: Use the sample in the starter-project folder and not the sample at the root of the project.

2. Use CocoaPods to import the Microsoft Graph SDK and authentication dependencies. This sample app already contains a podfile that will get the pods into the project. Navigate to the folder **starter-project** in the **Terminal** app, and from **Terminal** run:

        pod install

   You will receive confirmation that the pods have been imported into the project. For more information, see [CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html)


## Enable keychain sharing
 
For Xcode8, you need to add the keychain group or your app will fail to access keychain. 
To add the keychain group:
 
1. Select the project on the project manager panel in Xcode. (⌘ + 1).
 
2. Select **iOS-ObjectiveC-Connect-Sample**.
 
3. On the Capabilities tab, enable **Keychain Sharing**.
 
4. Add **com.microsoft.ios-objectivec-connect-sample** to the Keychain Groups.
