# Call Office 365 services in Visual Studio with the Microsoft Graph API

You can use the Connected Services in Visual Studio to configure your app to call the Microsoft Graph API. This article describes how to get a signed in user's profile photo, upload it to OneDrive, and send an email with a sharing link to the photo.

>**Note:** If you're using the Connected Services in Visual Studio 2017 Preview, go to [Get the starter project](#get-the-starter-project).

## Get Set up

1. To use the Office 365 Connected Services with Microsoft Graph, download the [Visual Studio 2017 Preview](https://www.visualstudio.com/vs/preview/).

    > **Note:** If you're using an earlier version of Visual Studio, you can use Visual Studio 2017 Preview side by side with your current version.

2. You will also need an Office 365 Subscription. You can get a free trial by joining the [Office 365 Developer program](https://dev.office.com/devprogram).

## Get the Starter Project

1. Clone the following repository at https://github.com/microsoftgraph/aspnet-connect-sample/tree/Office365connectedservice. This sample will give you the references you need to authenticate against the Microsoft Graph. 

2. Open it in Visual Studio 2017 Preview.


## Add the Connected Service
You're now ready to add the Microsoft Graph service to your Visual Studio project. 

In order to successfully build this example, we'll walk you through setting the following permissions for the Office 365 Services with the Microsoft Graph. 
- For the **File** APIs, set permissions to **Have full access to your files**.
- For the **Mail** APIs, set permissions to **Send mail as you**.- For the **User** APIs, set permissions to **Sign you in and read your profile**.
1. In Solution Explorer, double-click on "Connected Services" which will open the Connected Services tab. 

2. Choose the "Access Office 365 Services with Microsoft Graph" provider and follow the wizard and select the scopes above.  You can also follow this same step to change the permisssions at a later time.

[ADD GIF SCREENSHOT SHOWING FLOW]

## Call the Microsoft Graph

The Starter sample is configured to send a simple email. Let's now leverage the power of Microsoft Graph to update it to send an email with the link to the signed-in user's profile photo uploaded on OneDrive.

1. Navigate to 'Models\GraphService.cs' which hosts our code to call the Graph.

2. Find and **Uncomment** calls to the SDK in the following methods, to see how we can call the Graph to get a profile photo, upload a file to OneDrive and get a Sharing Link.

    ``` C#
        GetCurrentUserPhotoStream(GraphServiceClient graphClient)
    ```
    
    ``` C#
        UploadFileToOneDrive(GraphServiceClient graphClient, byte[] file)
    ```

    ```C#
        GetSharingLink(GraphServiceClient graphClient, string Id)
    ```
 
> Tip: Each comment starts with '//Uncomment:'
 

## Run the Sample
Build and run the sample.  

Click the Sign-in link on the top right -> then click the Send Email button.

You should see an email sent which will have a link to your profile photo.

-----

## Drill in

You should now have been able to use Visual Studio 2017 to connect and configure your services.  The starter sample had scaffolding and references created for you.  

### Code of note

- [Startup.Auth.cs](https://github.com/microsoftgraph/aspnet-connect-sample/tree/Office365connectedservice/Microsoft%20Graph%20SDK%20ASPNET%20Sample/Microsoft%20Graph%20SDK%20ASPNET%20Sample/App_Start/Startup.Auth.cs). Authenticates the current user and initializes the sample's token cache.

- Models\\[SessionTokenCache.cs](https://github.com/microsoftgraph/aspnet-connect-sample/tree/Office365connectedservice/Microsoft%20Graph%20SDK%20ASPNET%20Sample/Microsoft%20Graph%20SDK%20ASPNET%20Sample/TokenStorage/SessionTokenCache.cs). Stores the user's token information. You can replace this with your own custom token cache. Learn more in [Caching access tokens in a multitenant application](https://azure.microsoft.com/en-us/documentation/articles/guidance-multitenant-identity-token-cache/).

- Models\\[SampleAuthProvider.cs](https://github.com/microsoftgraph/aspnet-connect-sample/tree/Office365connectedservice/Microsoft%20Graph%20SDK%20ASPNET%20Sample/Microsoft%20Graph%20SDK%20ASPNET%20Sample/Helpers/SampleAuthProvider.cs). Implements the local IAuthProvider interface, and gets an access token. 

- Helpers\\[SDKHelper.cs](https://github.com/microsoftgraph/aspnet-connect-sample/tree/Office365connectedservice/Microsoft%20Graph%20SDK%20ASPNET%20Sample/Microsoft%20Graph%20SDK%20ASPNET%20Sample/Helpers/SDKHelper.cs). Initializes the **GraphServiceClient** from the [Microsoft Graph .NET Client Library](https://github.com/microsoftgraph/msgraph-sdk-dotnet) that's used to interact with the Microsoft Graph.

- Controllers\\[HomeController.cs](https://github.com/microsoftgraph/aspnet-connect-sample/tree/Office365connectedservice/Microsoft%20Graph%20SDK%20ASPNET%20Sample/Microsoft%20Graph%20SDK%20ASPNET%20Sample/Controllers/HomeController.cs). Contains methods that use the **GraphServiceClient** to build and send calls to the Microsoft Graph service and to process the response.

- Views\\Home\\[Graph.cshtml](https://github.com/microsoftgraph/aspnet-connect-sample/tree/Office365connectedservice/Microsoft%20Graph%20SDK%20ASPNET%20Sample/Microsoft%20Graph%20SDK%20ASPNET%20Sample/Views/Home/Graph.cshtml). Contains the sample's UI. 


## Stuck?

Ping us on [StackOverflow](https://stackoverflow.com/questions/tagged/microsoftgraph?sort=newest)

