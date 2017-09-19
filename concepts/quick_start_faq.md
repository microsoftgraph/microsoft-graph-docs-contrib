# Microsoft Graph Quick Start FAQ

This FAQ addresses questions and issues that you might encounter as you run through one of the [Microsoft Graph Quick Starts](https://developer.microsoft.com/en-us/graph/quick-start).

## What do the quick starts do?

Regardless of the platform you choose, each quick start does the following:

- Registers a new application for you in the [Application Registration Portal](https://apps.dev.microsoft.com). This is why we ask you to sign in with a Microsoft account when you **Get an app ID**. If your application will require an app secret, the quick start will create one for you. 
- Downloads a copy of sample code stored in a GitHub repo. You can see these repos in the [MicrosoftGraph organization](https://github.com/microsoftgraph?utf8=%E2%9C%93&q=connect) on GitHub.
- Inserts the new app ID, and wher necessary the app secret, into a configuration file inside the sample code stored in the GitHub repo. We don’t want to send sensitive information inside an HTTP request, so we ask you to copy the app secret after we create the new application, and then copy it into a form in the quick start before you download a copy of the sample.
- Prompts you to download the fully configured sample. After you download and unzip the sample code, you'll have a client or web application that should run, assuming that you've installed the specified prerequisites (IDEs, web frameworks, and so on) in your development environment.

## General quick Start sample questions
Questions about the organization and contents of the suite of quick start samples.

### Why does my quick start contain a Readme file?

Each quick start registers a new application and creates a zip file that contains the contents of a GitHub repo. It updates the files in the repo so that you don't have to configure the sample application in the repo. You'll find these repos in the [MicrosoftGraph organization](https://github.com/microsoftgraph?utf8=%E2%9C%93&q=connect) on GitHub.

Feel free to look at the repo associated with each quick start, file issues there, and/or follow the instructions in the Readme to register your own application. Follow the **Just give me the sample code** link under step 2 of each quick start to go to the associated repo.

### What Microsoft API features do the quick start samples show?

The suite of samples is being continually improved. Watch the sample repository that you are interested in. As we add features to your favorite sample, we announce the addition through the sample readme. The following table shows you the current features of each sample

|Sample|Authenticate|Get profile pic|Upload pic to OneDrive|Sharing link in email|Attach pic to email|Send email|
|-----:|-----:|-----:|------:|------:|------:|-----:|
|[Android Connect](https://github.com/microsoftgraph/android-java-connect-sample)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|
|[Angular 2 Connect](https://github.com/microsoftgraph/angular-connect-sample)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|
|[Angular 2 Connect REST](https://github.com/microsoftgraph/angular2-connect-rest-sample)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|
|[ASP.NET Connect](https://github.com/microsoftgraph/aspnet-connect-sample)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|
|[iOS Connect - Swift](https://github.com/microsoftgraph/ios-swift-connect-sample)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|
|[iOS Connect REST - Objective C](https://github.com/microsoftgraph/ios-objectivec-connect-rest-sample)|![](./images/Check.PNG)| | | | |![](./images/Check.PNG)|![](./images/Check.PNG)|
|[Node.js Connnect REST](https://github.com/microsoftgraph/nodejs-connect-rest-sample)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)| |![](./images/Check.PNG)|![](./images/Check.PNG)|
|[php Connect REST](https://github.com/microsoftgraph/php-connect-rest-sample)|![](./images/Check.PNG)| | | | |![](./images/Check.PNG)|![](./images/Check.PNG)|
|[php Connect](https://github.com/microsoftgraph/php-connect-sample)|![](./images/Check.PNG)| | | | |![](./images/Check.PNG)|![](./images/Check.PNG)|
|[Ruby Connect REST](https://github.com/microsoftgraph/ruby-connect-rest-sample)|![](./images/Check.PNG)| | | | |![](./images/Check.PNG)|![](./images/Check.PNG)|
|[UWP Connect](https://github.com/microsoftgraph/uwp-csharp-connect-sample) |![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|
|[Xamarin Connect](https://github.com/microsoftgraph/uwp-csharp-connect-sample)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|

## Authentication \& authorization
Questions related to authentication and authorization issues. 

### Why don't any of the quick start samples show advanced authentication use cases?

The quick start samples give you an introduction to authentication and Microsoft Graph API calls. When you add authentication and Graph API calls to your application, you need to know how to design for advanced authentication scenarios involving security and conditional access issues.

You can find out more about advanced authentication scenarios for the authentication library you are using by visiting the authentication library publisher's pages.

- [OAuth2Client for Android and iOS](https://github.com/nxtbgthng/OAuth2Client)
- [Passport for Node](http://passportjs.org/)
- [Illuminate Auth for PHP](https://github.com/illuminate/auth)
- [Flask for Python 3](https://pypi.python.org/pypi/Flask-OAuth2-Provider/0.2.1)
- [OmniAuth for Ruby](https://github.com/omniauth/omniauth)
- [Microsoft Authentication Library (MSAL) for .NET](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet)
- [Microsoft Authentication Library for Android](https://github.com/AzureAD/microsoft-authentication-library-for-android)
- [Microsoft Authentication Library for JavaScript](https://github.com/AzureAD/microsoft-authentication-library-for-js)

## Microsoft Graph API
Questions about coding for the Microsoft Graph API

### I didn’t get an email and I see no errors or exceptions. Why didn't this work?

If the sample appears to send an email but you don't see it in your Inbox,check your junk or spam folder. If you're sending the message from a test tenant, the message might get flagged as spam.

### Why doesn't the email sent by the sample didn't have my profile picture?

- This is usually because your profile has not been set up with a user profile picture. If you signed in with a Microsoft Service Account (MSA) then even if you have a profile picture, it will not appear in the email. The Microsoft Graph API is not currently supporting user profile pictures from MSA accounts. <br/>Most of the samples provided by the quick starts get your profile picture and upload it to the root directory of your OneDrive account. If you sign in with a Microsoft account (live.com, hotmail.com), Microsoft Graph can't currently fetch your profile picture, so we fall back to the thought bubble image.

- The Node sample and the iOS Objective C samples do not attach user profile pictures to the email message. 

## ASP .NET
Questions related to coding, building, or running the ASP.NET quick start sample.

## Unversal Windows Platform (UWP)
Questions related to coding, building, or running the UWP quick start sample.

## Xamarin
Questions related to coding, building, or running the Xamarin quick start sample.

### Why won't my  ASP.NET, UWP, or Xamarin project build?

If a sample that uses .NET libraries fails to build in Visual Studio, one or more of your projects might be running up against the 260-character Windows path length limit. Xamarin solutions, in particular, are susceptible to this, especially Android projects inside Xamarin solutions. Try moving the solution to a location at or close to the root directory. 

## Web stack samples
Questions related to coding, building, or running quick start samples built with web technology.

### How do I know if my local computer supports a local web server?


### If a web platform quick start provides REST and SDK samples, can I run them both at the same time?

Yes, you can run both samples at the same time. Just make sure that one of them isn't running on the default port. This means that when you start your test web server, you'll need to specify a port number for at least one version of the sample.

### Why do some quick starts include an app secret and others don’t?

Server-side web applications that need to make secure calls to the Microsoft Graph API require app secrets. This is why the quick starts for ASP.NET MVC, Node.js, PHP, and Ruby provide an app secret.

### Why doesn't the Angular quick start give me an app secret when all the other web platform quick starts do?

An app secret is required only for server-side web applications.




### I get an error when I try to sign in and authorize the sample app. What steps can I take to fix this? 

First try to run the sample app in an InPrivate or Incognito window. Sometimes web browser cache settings can cause the authorization step to fail, especially if you sign in with multiple Microsoft accounts. If that doesn't work, please follow up with us on [Stack Overflow](https://stackoverflow.com/questions/tagged/microsoft-graph). Be sure to tag your question with microsoft-graph and copy the error information into the question.




## Didn't find what you need?

If this FAQ didn't address a question you have or a problem you encountered with one or more of the quick starts, please report your question or problem on [Stack Overflow](https://stackoverflow.com/questions/tagged/microsoft-graph). 

If your problem is related to the code sample provided by the quick start, you can also file an issue in the GitHub sample repo. You can find the repo by following the **Just give me the sample code** link under step 2 for each quick start.
