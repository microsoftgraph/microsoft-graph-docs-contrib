---
title: "Configure Microsoft 365 services with the Microsoft Graph API in Visual Studio"
description: "Learn how to configure Connected Services in Visual Studio to use Microsoft Graph in an ASP.NET MVC application that displays events from the currently signed in user's calendar."
ms.localizationpriority: high
ms.prod: "reports"
author: "sarahwxy"
---

# Configure Microsoft 365 services with the Microsoft Graph API in Visual Studio 

You can use Microsoft Graph to consume user information stored in Microsoft 365 in custom applications. By using Connected Services in Visual Studio, you can grant your application access to the following Microsoft 365 services:

- Outlook: mail, calendars, and contacts 
- Azure Active Directory: users, groups, and directories 
- OneDrive: files
- OneNote: notes and notebooks
- SharePoint: sites, lists, and document libraries
- Planner: tasks

This article describes how to configure Connected Services in Visual Studio to use Microsoft Graph in an ASP.NET MVC application that displays events from the currently signed in user's calendar.

## Get set up

To use the Office 365 Connected Services with Microsoft Graph, you need to:

- Download [Visual Studio](https://visualstudio.microsoft.com/vs/). If you already have it, update to the latest version.
- Get a Microsoft 365 subscription. To get a free trial developer subscription, join the [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program).

## Get the starter project

Download the [Microsoft Graph ASP.NET Connected Services MVC App Sample](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/archive/refs/heads/Office365-ConnectedServices.zip). This sample includes the references that you need to authenticate against Microsoft Graph. After you download the starter project, unzip, and open the **graph-tutorial** sample in Visual Studio.

## Add the Connected Service

### Visual Studio 2022

1. In **Solution Explorer**, choose **Connected Services** to open the Connected Services tab.
2. In **Service Dependencies**, click the **+** button to add a new service dependency.
3. Scroll down and choose **Access Microsoft 365 services with Microsoft Graph**.

### Visual Studio 2017 and Visual Studio 2019 
  
1. In Solution Explorer, choose **Connected Services** to open the Connected Services tab.
2. Choose **Access Microsoft 365 services with Microsoft Graph** provider.

## Configure Microsoft 365 data access

1. Enter the domain of your developer account and choose **Next**.  
    
    Go to your [Azure Active Directory (Azure AD)](https://aad.portal.azure.com) admin center in the Azure Portal to find your domain name. Sign in and select the **Azure Active Directory >  Overview** menu item. The field **Primary domain** in **Basic information** section contains your domain name.

 > **Tip:** If your primary address is `admin@contoso.onmicrosoft.com`, your domain is `contoso.onmicrosoft.com`. 
    
2. Select **Create a new Azure AD application** and choose **Next**.
3. For this tutorial, select the following permissions:

    - Select the **Calendars** tab and check the box **Read your calendars** to grant your application the `Calendar.Read` permission.
    - Select the **User** tab and check the box **Sign you in and read your profile** to grant your application the `User.Read` permission.

4. Choose **Finish**.

## Update the app settings

1. Double-click **Web.config**.

2. Inside **<appSettings\>**, insert the following code: 

    ```XML
    <add key="ida:RedirectUri" value="https://localhost:PORT/" />
    <add key="ida:AppScopes" value="User.Read Calendars.Read" />
    ```
    
    Modify the `PORT` value for ```ida:RedirectUri``` to match the URL of your application.
 
> **Tip:** You can find the PORT information in the project properties.
 

## Run the sample

Save your changes and start the project. Next, select the **Click here to sign in** button that redirects you to https://login.microsoftonline.com. Sign in with your developer account and consent to the requested permissions. 

The home page displays your name that indicates that you're signed-in. On the **Calendar** tab, a table of events displays accordingly to your account.  

Select **Sign Out** on the avatar in the top-right corner to reset the session and return to the home page.


## Explore the code

You can now explore the files and code in Visual Studio to learn more about this starter project.

### Request to Microsoft Graph API

The [Helpers\\GraphHelper.cs](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/Helpers/GraphHelper.cs) contains the methods that use the **GraphServiceClient** to send requests to the Microsoft Graph service. This class implements the **GetUserDetailsAsync** method that uses the Microsoft Graph SDK to retreive user's information by calling the `/me` endpoint.

The **GetEventsAsync** method uses the `/v1.0/me/events` endpoint to request calendars data. The `select` OData query parameter limits the fields returned for each event to just those displayed in the view. The `orderBy` parameter sorts the results by the date and time they were created, with the most recent item being first.

The **GetAuthenticatedClient** method initializes a **GraphServiceClient** with an authentication provider and attempts to retrieve a previously obtained access token from the token store using the **AcquireTokenSilent** method. Notice that if the **AcquireTokenSilent** fails, the user is presented with an interactive login.

### Authentication

The [App_Start\\Startup.Auth.cs](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/App_Start/Startup.Auth.cs) configures the OWIN middleware with the values from **Web.config** and defines the following callback methods **OnAuthenticationFailedAsync** and **OnAuthorizationCodeReceivedAsync** that are invoked when the sign-in process returns from Azure.

The method **OnAuthorizationCodeReceivedAsync** wraps the default user token cache of the **ConfidentialClientApplication** with the **SessionTokenStore** class. The **MSAL library** handles the logic of storing the tokens and refreshing it when needed. The code passes the user details obtained from Microsoft Graph to the **SessionTokenStore** object to store in the session.

### Token cache

The [TokenStorage\\SessionTokenCache.cs](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/TokenStorage/SessionTokenStore.cs) implements a token store class to serialize and store the **MSAL token** cache and the user's details in the user session. You can replace this with your own custom token cache. For more information, see [Cache access tokens](/azure/architecture/multitenant-identity/token-cache).

### Sign in and sign out

The [Controllers\\AccountController.cs](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/Controllers/AccountController.cs) is a controller to handle sign-in that defines a **SignIn** and **SignOut** action. The **SignIn** action checks if the request is already authenticated. If not, it invokes the OWIN middleware to authenticate the user. The **SignOut** action invokes the OWIN middleware to sign out.

### Views

The [Views\\Shared\\\_Layout.cshtml](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/Views/Shared/_Layout.cshtml) defines the global layout of the app. It adds [Bootstrap](https://getbootstrap.com/) for simple styling and [Font Awesome](https://fontawesome.com/) for icons, defines the layout of the nav bar, and uses the **Alert** class to display alerts.

The [Views\\Home\\Index.cshtml](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/Views/Home/Index.cshtml) 
 and [Views\\Calendar\\Index.cshtml](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/Views/Calendar/Index.cshtml) contain the UI to display the information retrieved from Azure.  

## Need help?

If you need help, post your questions on [Microsoft Q&A](/answers/products/m365#microsoft-graph). Tag your post with {microsoft-graph-identity}.
