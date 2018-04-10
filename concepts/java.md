# Get started with Microsoft Graph in a Java app

This article uses the [console-java-connect-sample](https://github.com/microsoftgraph/console-java-connect-sample) to walk through sending mail via Microsoft Graph from a Java console application. The article shows you the code that you need to add to your Java app so that you can use the Microsoft Graph API. The article shows you how to access Microsoft Graph by using the [Microsoft Graph SDK for Java](https://github.com/microsoftgraph/msgraph-sdk-java).

## Choosing an authentication library

Before your app can make calls on Microsoft Graph, the app must get an access token from Azure Active Directory (Azure AD). The token is to be passed in an HTTP header with each call to Microsoft Graph. The **Microsoft Graph SDK** takes care of creating the header and adding the token. To make this possible, your app passes an instance of the [IAuthenticationProvider](https://github.com/microsoftgraph/msgraph-sdk-java/blob/dev/src/main/java/com/microsoft/graph/authentication/IAuthenticationProvider.java) interface. Microsoft Graph adopted the OAuth 2.0 and Open ID Connect standards, which lets you choose from many open source OAuth 2 Java libraries that are available. The Azure AD team recommends using [ScribeJava])(https://github.com/scribejava/scribejava), a simple OAuth2 library for Java.

The sample implements the Authorization Code Grant flow which is appropriate for an authorization scenario involving a client application, a user, and an OAuth 2 enabled endpoint. In production server-to-server Java applications, you would use the Client Credentials authorization flow. **ScribeJava** handles both of these authorization flows. To make this sample simple to configure as a Quick Start sample, we chose to demonstrate the most simple flow.

## Installing and running the sample

To install and configure the sample app, follow the instructions in the [README](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/README.md) document in the **console-java-connect-sample** repository on GitHub. You can clone the sample and walk through the code in your favorite Java IDE by using this command to clone the repository:

```
git@github.com:microsoftgraph/console-java-connect-sample.git
```

When you register the application as covered in **Step 4** of the [README](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/README.md), you'll be assigning delegated scopes (permissions) to the sample. Be sure to scopes as shown in the following image:

![Java connect console sample permissions](../concepts/images/console-java-connnect-sample-permissions.JPG)

After you complete the application registration and configuring the sample for the **Application Id** you get from the application registration, you can build and run the sample.

## Code walkthrough

Let's walk through the source code packages and files in the project:

### connect package
This package contains the OAuth2 authentication flow logic and the configuration that you'll be updating.

- [AuthenticationManager.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/connect/AuthenticationManager.java):  This class imports the  **ScribeJava** objects used for the Authorization Code Grant flow.
- [Constants.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/connect/Constants.java): Holds public static strings for providing app registration related values and the template for the email message that the application sends.
- [Debug.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/connect/Debug.java): Public debug level flag. Set it's value to change the logging behavior of the sample app.
- [DebugLogger.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/connect/DebugLogger.java): Logging utility that writes information to the console according to the debug level set.
- [IConnectCallback](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/connect/IConnectCallback.java): Defines the callback method that you'd use if you call the asynchronous overload of the **ScribeJava.getAccessToken** method.

### msgraph package