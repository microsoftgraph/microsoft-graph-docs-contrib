---
title: "Call Microsoft 365 services in Visual Studio with the Microsoft Graph API"
description: "This article describes how to configure Connected Services in Visual Studio to use Microsoft Graph in an ASP.NET MVC application that displays events from the currently signed in user's calendar."
ms.localizationpriority: high
ms.prod: "reports"
author: "sarahwxy"
---

# Configure Microsoft 365 services with the Microsoft Graph API in Visual Studio 

Microsoft Graph enables developers to consume user information stored in Microsoft 365 in custom applications. Using Connected Services in Visual Studio you can grant your application access to the following Microsoft 365 services:

- Outlook: Mail, Calendars and Contacts; 
- Azure AD: Users, Groups and Directories; 
- OneDrive: Files;
- OneNote: Notes and Notebooks;
- SharePoint: Sites, Lists and Document Libraries;
- Planner: Tasks.

In this article you will learn how to configure Connected Services in Visual Studio to use Microsoft Graph in an ASP.NET MVC application that displays events from the currently signed in user's calendar.

## Get set up

To use the Office 365 Connected Services with Microsoft Graph, you'll need:

- Download [Visual Studio](https://visualstudio.microsoft.com/vs/). If you already have it, update it to the latest version.
- Get a Microsoft 365 subscription. To get a free trial, join [Microsoft 365 Developer program](https://developer.microsoft.com/microsoft-365/dev-program).

## Get the starter project

Download the [Microsoft Graph ASP.NET Connected Services MVC App Sample](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/archive/refs/heads/Office365-ConnectedServices.zip). This sample includes the references that you need to authenticate against Microsoft Graph. After you download the starter project, unzip, and open the graph-tutorial sample in Visual Studio.

## Add  Connected Service

###  Visual Studio 2022

1. In Solution Explorer, choose **Connected Services** to open the Connected Services tab.
2. In **Service Dependencies** click on the **+** button to add a new service dependency.
3. Scroll down and click in  **Access Microsoft 365 services with Microsoft Graph**.

### Visual Studio 2017 and Visual Studio 2019 
  
1. In Solution Explorer, choose **Connected Services** to open the Connected Services tab.
2. Choose  **Access Microsoft 365 services with Microsoft Graph** provider.


## Configure Microsoft 365 Data Access
1. Enter the domain of your Developer Account and click **Next**.  
    
    You can find your Azure AD domain by accessing Azure Active Directory admin center (https://aad.portal.azure.com). Sign-in and select Azure Active Directory >  Overview. The value of **Primary domain** in the Basic information section is what you will use in this step.

 > **Tip:** If your primary address is `admin@contoso.onmicrosoft.com`, for example, your domain would be `contoso.onmicrosoft.com`. 
    
2. Select **Create a new Azure AD application** and click **Next**.
3. For this tutorial select the following permissions:

    - Click on **Calendars** tab and check the box **Read your calendars** to give Calendar.Read API permissions.
    - Click on **User** tab and check the box **Sign you in and read your profile** to give Calendar.Read API permissions.

4. Click **Finish**.
## Update App Settings


1. Double-click **Web.config**.

2. Inside **<appSettings\>** insert the following code: 

    ```XML
    <add key="ida:RedirectUri" value="https://localhost:PORT/" />
    <add key="ida:AppScopes" value="User.Read Calendars.Read" />
    ```
    
    Modify the ```PORT``` value for ```ida:RedirectUri``` to match your application's URL.
 
> **Tip:** You can find the PORT information in the project properties.
 

## Run the sample
Save your changes and start the project. Select the **Sign In** button and you should be redirected to https://login.microsoftonline.com. Log in with your Microsoft account and consent to the requested permissions. 

On the home page you should see your name indicating that you're signed-in. On the calendar tab, a table of events will be displayed accordingly to your account.  

Selecting **Sign Out** on the avatar in the top-right corner you will reset the session and return to the home page.



## Explore the code

**Request to Microsoft Graph API**

  - [Helpers\\GraphHelper.cs](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/Helpers/GraphHelper.cs)
     
    Contains the methods that use the **GraphServiceClient** to send requests to the Microsoft Graph service. 
    

    Implements  ```GetUserDetailsAsync``` , which uses the Microsoft Graph SDK to retreive user's information by calling the ```/me``` endpoint.

    In ```GetEventsAsync```  the URL called is ```/v1.0/me/events```, used to request calendars data. The ```Select```  limits the fields returned for each events to just those the view will actually use. The ```OrderBy```  sorts the results by the date and time they were created, with the most recent item being first.

    ```GetAuthenticatedClient```  initializes a **GraphServiceClient** with an authentication provider and attempts to retrieve a previously obtained access token from the token store using the ```AcquireTokenSilent``` method. Notice that if the ```AcquireTokenSilent``` fails, the user should be presented with an interactive login.

**Authentication**

  - [App_Start\\Startup.Auth.cs](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/App_Start/Startup.Auth.cs) 
     
    Configures the OWIN middleware with the values from ```Web.config``` and defines two callback methods, ```OnAuthenticationFailedAsync``` and ```OnAuthorizationCodeReceivedAsync```. These callback methods are invoked when the sign-in process returns from Azure.

    The method ```OnAuthorizationCodeReceivedAsync``` wraps the ```ConfidentialClientApplication```'s default user token cache with the ```SessionTokenStore``` class. The **MSAL library** handles the logic of storing the tokens and refreshing it when needed. The code passes the user details obtained from Microsoft Graph to the ```SessionTokenStore``` object to store in the session.

**Token Cache**

- [TokenStorage\\SessionTokenCache.cs](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/TokenStorage/SessionTokenStore.cs) 

    Implements a token store class to serialize and store the **MSAL token** cache and the user's details in the user session. You can replace this with your own custom token cache. For more information, see [Caching access tokens in a multitenant application](/azure/architecture/multitenant-identity/token-cache).



**Sign In and Sign Out**

- [Controllers\\AccountController.cs](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/Controllers/AccountController.cs) 
    
    It's a controller to handle sign-in. Defines a ```SignIn``` and ```SignOut``` action. The ```SignIn``` action checks if the request is already authenticated. If not, it invokes the OWIN middleware to authenticate the user. The ```SignOut``` action invokes the OWIN middleware to sign out.

**Views**


- [Views\\Shared\\_Layout.cshtml](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/Views/Shared/_Layout.cshtml)
    
    Defines the global layout of the app. It adds [Bootstrap](https://getbootstrap.com/) for simple styling, and [Font Awesome](https://fontawesome.com/) for icons. It  defines the layout of the nav bar, and uses the ```Alert``` class to display alerts.

- [Views\\Home\\Index.cshtml](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/Views/Home/Index.cshtml) 
 and [Views\\Calendar\\Index.cshtml](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp/blob/Office365-ConnectedServices/Demos/Office365-ConnectedServices/graph-tutorial/Views/Calendar/Index.cshtml) 

    Contains the UI to display the information retrieved from Azure.  



## Need help?

If you need help, post your questions on [Microsoft Q&A](/answers/products/m365#microsoft-graph). Tag your post with {microsoft-graph-identity}.
