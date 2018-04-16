# Get started with Microsoft Graph in a Java app

This article uses the [console-java-connect-sample](https://github.com/microsoftgraph/console-java-connect-sample) to walk through sending mail via Microsoft Graph from a Java console application. The article shows you the code that you need to add to your Java app so that you can use the Microsoft Graph API and how you access Microsoft Graph by using the [Microsoft Graph SDK for Java](https://github.com/microsoftgraph/msgraph-sdk-java).

## Choosing an authentication library

Microsoft Graph adopted the OAuth 2.0 and Open ID Connect standards, which lets you choose from many open source OAuth 2 Java libraries that are available. The Azure AD team recommends using [ScribeJava])(https://github.com/scribejava/scribejava), a simple OAuth2 library for Java.

The sample implements the Authorization Code Grant flow which is appropriate for an authorization scenario involving a client application, a user, and an OAuth 2 enabled endpoint. In production server-to-server Java applications, you would use the Client Credentials authorization flow. **ScribeJava** handles both of these authorization flows. To make this sample simple to configure as a Quick Start sample, we chose to demonstrate the most simple flow.

Before your app can make calls on Microsoft Graph, the app must get an access token from Azure Active Directory (Azure AD). This token must be present in an HTTP authentication header with each call to Microsoft Graph. The **Microsoft Graph SDK** takes care of creating the header and adding the token on each call as long as you implement [IAuthenticationProvider](https://github.com/microsoftgraph/msgraph-sdk-java/blob/dev/src/main/java/com/microsoft/graph/authentication/IAuthenticationProvider.java). **ScribeJava** handles authentication and getting an access token. Your app provides the access token to the Microsoft Graph SDK via the **IAuthenticationProvider** interface.

## Installing and running the sample

To install and configure the sample app, follow the instructions in the [README](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/README.md) document in the **console-java-connect-sample** repository on GitHub. You can clone the sample and walk through the code in your favorite Java IDE by using this command to clone the repository:

```
git@github.com:microsoftgraph/console-java-connect-sample.git
```

When you register the application as covered in **Step 4** of the [README](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/README.md), you'll be assigning delegated scopes (permissions) to the sample. Be sure to scopes as shown in the following image:

![Java connect console sample permissions](../concepts/images/console-java-connnect-sample-permissions.JPG)

After you complete the application registration and [configuring the sample](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/README.md#configure-your-app) for the **Application Id** you get from the application registration, you can build and run the sample.

## Code walkthrough

Before we walk through the flow of the sample, you should take a few minutes to learn about the [project structure](#sample-project-structure). When you're ready, lets step through the logic in the sample:


   
### Walk through the code
We'll look at the sample code at a high level and then dive into the details of creating an email message and sending it.

#### The sample app user experience

The [PublicClient.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/PublicClient.java) **main(String args[])** static method creates an instance of **PublicClient** and kicks off the sign in and authentication process. [AuthenticationManager.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/connect/AuthenticationManager) provides a singleton instance which is used to connect the user to Microsoft Graph. 

**AuthenticationManager** exposes a string property whose value is the access token returned by **AAD** when the user is authenticated and gives the sample permission to access requested Microsoft Graph resources. 

The **PublicClient.startSendMail** method performs the following steps:

- Creates a new instance of the [GraphSendMail](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/msgraph/GraphSendMail.java) class. 
- **GraphSendMail.getMeUser()** returns the **AAD** profile of the current user so that the sample console object can personalize the prompts that it displays to the user. 
- The console displays:

   `Hello, Laura Steele. Would you like to send an email to yourself or someone else?`

   `Enter the address to which you'd like to send a message. If you enter nothing, the message will go to your address`

- Calls the **GraphSendMail.sendMail** method which takes the user's input. If an email address is provided, **sendMail** sends a message to that address. Otherwise, the message is sent to the current user. 

- Prompts the user to send another email or quit the console app.

   `Email sent!`

   `Want to send another message? Type 'y' for yes and any other key to exit.`

#### Send the email message

The mail sending logic takes the following steps:



1. **Get profile picture**:<br/> Calls **GraphServiceController.getUserProfilePicture()** to get an array of bytes representing the profile picture of the **AAD** user who signed into the sample.

```java
            photoStream = mGraphServiceClient
                    .me()
                    .photo()
                    .content()
                    .buildRequest()
                    .get();

```
2. **Upload picture to OneDrive**:
<br/>Calls **GraphServiceController.uploadPictureToOneDrive(byte[] bytes)** to POST the profile picture in the user's OneDrive root folder. A Microsoft Graph SDK **DriveItem** object is returned. 
```java
            driveItem = mGraphServiceClient
                    .me()
                    .drive()
                    .root()
                    .itemWithPath("me2.png")
                    .content()
                    .buildRequest()
                    .put(picture);

```
3. **Get the OneDrive sharing link for the picture**:<br/>Calls **GraphServiceController.getPermissionSharingLink** to create a new sharing link. A Microsoft Graph SDK **Permission** object is returned.
```java
            permission = mGraphServiceClient
                    .me()
                    .drive()
                    .items(id)
                    .createLink("view", "organization")
                    .buildRequest()
                    .post();

```
4. **Replaces the contents of the HTML template anchor tag** with the **webUrl** for the sharing link in the previous step.
5. **Create a draft message**: <br/>Calls **GraphServiceController.createDraftMail**, passing the recipient email address, subject text, and the updated HTML template. A draft message is created and POSTed to the user's draft message folder.
```java
            message = mGraphServiceClient
                    .me()
                    .messages()
                    .buildRequest()
                    .post(message);

```
6. **Attach picture to draft message**: <br/>Calls **GraphServiceController.addPictureToDraftMessage** to get the draft message and add the picture to the message as an object attachment.
```java
            FileAttachment fileAttachment = new FileAttachment();
            fileAttachment.oDataType = "#microsoft.graph.fileAttachment";
            fileAttachment.contentBytes = attachementBytes;
            fileAttachment.name = "me.png";
            fileAttachment.size = attachementBytes.length;
            fileAttachment.isInline = false;
            fileAttachment.id = "my profile picture";

            DebugLogger.getInstance().writeLog(Level.INFO, "attachement id " + fileAttachment.id);
            attachment = mGraphServiceClient
                    .me()
                    .messages(messageId)
                    .attachments()
                    .buildRequest()
                    .post(fileAttachment);

```
7. **Send the draft message**:<br/>Calls **GraphServiceController.sendDraftMessage** to send the updated draft message to the intended user.
```java
            mGraphServiceClient
                    .me()
                    .mailFolders("Drafts")
                    .messages(messageId)
                    .send()
                    .buildRequest()
                    .post();

```

> **Note:** The body of the message sent by the application originates as an HTML template stored in [Constants.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/connect/Constants.java) as a static string. When sent, the body of the message contains a public sharing hyperlink to a picture that the sample uploads to the user's OneDrive root folder. 

### Sample project structure

### connect package
This package contains the OAuth2 authentication flow logic and the configuration that you'll be updating.

- [AuthenticationManager.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/connect/AuthenticationManager.java):  This class imports the  **ScribeJava** objects used for the Authorization Code Grant flow.
- [Constants.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/connect/Constants.java): Holds public static strings for providing app registration related values and the template for the email message that the application sends.
- [Debug.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/connect/Debug.java): Public debug level flag. Set it's value to change the logging behavior of the sample app.
- [DebugLogger.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/connect/DebugLogger.java): Logging utility that writes information to the console according to the debug level set.
- [IConnectCallback](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/connect/IConnectCallback.java): Defines the callback method that you'd use if you call the asynchronous overload of the **ScribeJava.getAccessToken** method.
- [SendMailException](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/msgraph/SendMailException.java): A class that is derived from **Exception** and encapsulates Microsoft Graph-specific exception information. Classes in the **GraphSendMail** package can throw this type of exception.

### msgraph package

This package contains all of the logic that makes calls on Microsoft Graph.

- [GraphSendMail](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/msgraph/GraphSendMail.java): Chains together calls into **GraphServiceController** (a Microsoft Graph API sample helper class) to create and send an email message with a picture attachment.
- [GraphServiceClientManager.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/msgraph/GraphServiceClientManager.java): Instantiates the Microsoft Graph SDK [GraphServiceClient](https://github.com/microsoftgraph/msgraph-sdk-java/blob/dev/src/main/java/com/microsoft/graph/requests/extensions/GraphServiceClient.java) and adds an access token to all outgoing API calls on the Microsoft Graph endpoint.

- [GraphServiceController.java](https://github.com/microsoftgraph/console-java-connect-sample/blob/master/src/main/java/com/microsoft/graphsample/msgraph/GraphServiceController.java): Uses the Microsoft Graph SDK to make all of the calls on the **GraphServiceClient**. Calls include:

   - **createDraftMail**: creates a draft email message and saves it in your draft messages folder.
   - **sendNewMessageAsync**: Creates and sends an email message.
   - **addPictureToDraftMessage**: Posts a file attachment in a draft message by message Id
   - **addAttachmentToDraftAsync**: Adds an attachment to a draft message.
   - **sendDraftMessage**: Sends a message from the drafts folder.
   - **getDraftMessage**: Gets a message from the user' message collection by message id.
   - **getUser**: Gets the local user who is authenticated with the Microsoft Graph API endpoint.
   - **getUserProfilePicture**: Gets the signed in user's profile picture from the Microsoft Graph.
   - **uploadPictureToOneDrive**: Uploads a picture as byte array to the user's OneDrive root folder.
   - **getPermissionSharingLink**: Requests OneDrive to create a public sharing link to a picture stored in OneDrive.