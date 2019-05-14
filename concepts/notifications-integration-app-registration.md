---
title: "Managing app registration and API permission for Microsoft Graph notifications "
description: "In order to receive notifications sent through the Microsoft Graph, follow the steps outlined here to first register your application on the Microsoft Azure portal.  "
localization_priority: Priority
ms.prod: "Microsoft Graph notifications"
---

# Managing app registration and API permission for Microsoft Graph notifications

Registering your app with Microsoft identity platform to support MSA or Azure AD, and declaring API permissions are required for using Microsoft Graph notifications

## Register your app to support MSA or Azure AD 

Let’s start with registering your application with the Microsoft identity platform to support MSA or Azure AD on the [Microsoft Azure portal](https://portal.azure.com/#home), which is required for enabling you application service to integrate with Microsoft Graph notifications for a user-centric notification experience. If you’ve previously registered your application on the [Microsoft Application Portal](https://apps.dev.microsoft.com/), don’t worry; your existing apps will show up in the new and improved Azure portal experience.

For detailed guidance on app registration, please see [Register an application with the Microsoft identity platform](https://docs.microsoft.com/en-us/graph/auth-register-app-v2). 


> [!NOTE]
> If you do not already have an MSA and wish to use one, first register on [account.microsoft.com](https://account.microsoft.com/account). If you're writing an app that needs to use Azure AD v1.0 as a work account or school account authentication and identity framework, visit [Azure Active Directory Authentication Libraries](https://docs.microsoft.com/azure/active-directory/develop/active-directory-authentication-libraries) to learn more. If you’re interested in learning about or using the new converged Microsoft identity platform (v2.0), you will find helpful information at [Comparing the Microsoft identity platform endpoint and Azure AD v1.0 endpoint](https://docs.microsoft.com/en-us/azure/active-directory/develop/azure-ad-endpoint-comparison).

Once you've completed the app registration, keep the provided application ID / client ID somewhere handy. You'll need this ID later when registering your application for cross-device experiences in the [Microsoft Partner Center](https://partner.microsoft.com/).

## App certificates and secrets

Next, in order to enable your application to identify and authenticate itself when obtaining auth. tokens, you can either upload your own certificate or create a new client secret by navigating to “Certificates & secrets” as shown below.
    
![App certificates and secrets](images/notifications-app-secrets.png)
    
> [!NOTE]
> If you opt to generate a new client secret, be sure to copy and keep it in a safe place as you won’t be able to access it again once you leave the portal.

## API permissions

Next, you will need to add additional permissions required in order to leverage Graph Notifications. Click on “Add a permission” and under Microsoft APIs, select “Microsoft Graph”, followed by “Delegated permissions” as shown below.
    
![Add permissions](images/notifications-api-permissions.png)
    
You will need to add the list of permissions as shown below:

  - User.Read - allows your application to sign-in your user

  - Device.Read - allows identification of a user’s list of devices

  - Device.Command - allows communication to a user’s device

  - UserActivity.ReadWrite.CreatedByApp - allows app subscription for
    notification retrieval

  - Notifications.ReadWrite.CreatedByApp - allows notification access
    and delivery

  - wns.connect - allows connecting to windows notification service

  ![List of allowed delegated permissions](images/notifications-api-permissions-list.png)

Learn more about [permissions and consent](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-permissions-and-consent) or view the Microsoft Graph [permissions reference](https://docs.microsoft.com/en-us/graph/permissions-reference).


Now that you’ve completed registration on the Azure portal, you will need to visit [Partner Center/Windows Dev Center](https://partner.microsoft.com/) to setup your application for cross-device experiences and to target your corresponding app platforms for notifications sent through Microsoft Graph.  For next steps, proceed to [Onboarding to cross-device experiences](notifications-integration-cross-device-experiences-onboarding.md). 
