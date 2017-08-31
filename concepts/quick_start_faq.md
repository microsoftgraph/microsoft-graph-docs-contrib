# Microsoft Graph Quick Start FAQ

This document addresses questions and issues that people might encounter as they run through one or of the [Microsoft Graph Quick Starts](https://developer.microsoft.com/en-us/graph/quick-start).

## First of all, what do the quick starts do?

Regardless of the platform you choose, each quick start does the following:

- Registers and configures a new application for you in the [Application Registration Portal](https://apps.dev.microsoft.com). This is why we ask you to sign in with a Microsoft account at the **Get an App ID" step. If your application will require an App Secret, the quick start will create one for you. 
- Downloads a copy of sample code stored in a GitHub repo. You can see these repos in the [MicrosoftGraph organization](https://github.com/microsoftgraph?utf8=%E2%9C%93&q=connect) on GitHub.
- Inserts the new App ID, and wherever necessary the App Secret to a configuration file inside the sample code stored in the GitHub repo. This is why we ask you to copy the App Secret after we create the new application and then have you copy it into a form in the quick start before you can download a copy of the sample code. We don't want to send information this sensitive inside an HTTP request.
- Prompts you to download the fully configured sample. Once you've downloaded and unzipped the sample code, you'll have a client or web application that should run "out of the box," assuming that you've installed the specified prerequisites (IDEs, web frameworks, etc.) in your development environment.


## Common questions

### 	Why won't my  ASP.NET, UWP, or Xamarin project build?

If a sample that uses .NET libraries fails to build in Visual Studio, one or more of your projects might be running up against the 260-character Windows path length limit. Xamarin solutions, in particular, are susceptible to this, especially Android projects inside Xamarin solutions. Try moving the solution to a location at or close to the root directory. 

### 	If a web-platform quick start provides REST and SDK samples, can I run them both at the same time?

Yes, you can run both samples at the same time. Just make sure that one of them isn't running on the default port. This means that when you start your test web server, you'll need to specify a port number for at least one version of the sample.

### 	I didn’t get an email and I see no errors or exceptions. Why didn't this work?

If the sample appears to send an email but you don't see it in your Inbox, check your junk or spam folder. If you're sending the message from a test tenant, the message might get flagged as spam.

### 	I get an error when I try to sign in and authorize the sample app. What steps can I take to fix this? 

First try to run the sample app in an InPrivate or Incognito window. Sometimes web browser cache settings can cause the authorization step to fail, especially if you sign in with multiple Microsoft accounts. If that doesn't work, please follow up with us on [Stack Overflow](https://stackoverflow.com/questions/tagged/microsoft-graph). Be sure to tag your question with microsoft-graph and copy the error information into the question.

### Why do some of the quick starts include an App Secret and some don’t?

Server-side web applications that need to make secure calls to the Microsoft Graph API require App Secrets. This is why the quick starts for ASP.NET MVC, Node.js, PHP, and Ruby provide an App Secret.

### 	Why does the Angular quick start not give me an App Secret when all of the other web platform quick starts do?

An App Secret is required only for server-side web applications.

###	Why does my quick start contain a Readme file?

Each quick start registers a new application and creates a zip file that contains the contents of a GitHub repo.  it updates the files in the repo so that you don't have to configure the sample application in the repo. You'll find these repos in the [MicrosoftGraph organization](https://github.com/microsoftgraph?utf8=%E2%9C%93&q=connect) on GitHub.

Feel free to look at the repo associated with each quick start, file issues there, and/or follow the instructions in the Readme to register your own application. Follow the **Just give me the sample code** link under step 2 of each quick start to go to the associated repo.

###	Why did the sample give me an image containing a thought bubble?

Most of the samples provided by the quick starts get your profile picture and upload it to the root directory of your OneDrive account. If you sign in with an MSA account (live.com, hotmail.com) Microsoft Graph can't currently fetch your profile picture, so we fall back to the thought bubble image. The sample also uses this image if your account has no profile picture.

###	Why do you provide a **[Manage your app](https://apps.dev.microsoft.com)** link after I get an App ID?

We provide this link because the App ID step registers a new application for you in the [Application Registration Portal](https://apps.dev.microsoft.com). We provide this link so that you can view the settings for this application, delete the application, or even update the settings for the application after you run the sample. 

## Didn't find what you need?

If this document didn't address a question you have about the quick starts or a problem you're having with one or more of the quick starts, please report your question and/or problem on [Stack Overflow](https://stackoverflow.com/questions/tagged/microsoft-graph). 

If your problem relates to the code sample provided by the quick start that you used, you can also file an issue in the GitHub repo associated with it. You can find the repo for each quick start by following the **Just give me the sample code** link under step 2 of each quick start.
