---
title: "Create a Microsoft Entra app"
description: "Create a Microsoft Entra application registration for communicating with Microsoft 365"
ms.localizationpriority: medium
author: sebastienlevert
---

# Create a Microsoft Entra app to use with the Microsoft Graph Toolkit

Microsoft Graph, the API that you use to connect to Microsoft 365, is secured with OAuth 2.0. In order to connect your app to Microsoft 365, you need to create an app in Microsoft Entra ID and grant this app a set of permissions to access specific resources on behalf of the person using your app. This article describes how to register and configure a web application to use with Microsoft Graph Toolkit.

<a name='add-new-application-registration-in-azure-active-directory'></a>

## Add new application registration in Microsoft Entra ID

To create an application in Microsoft Entra ID, you need to add a new application registration, and then configure an app name and URL location.

To create the app in Microsoft Entra ID:

1. Go to the [Microsoft Entra admin center](https://entra.microsoft.com).
1. Expand the **Identity** menu > expand **Applications** > select **App registrations** > select the **New registration** button.
1. Enter the name for your app; for example, `My M365 app`.
1. For the type of [supported account types](/azure/active-directory/develop/single-and-multi-tenant-apps#who-can-sign-in-to-your-app), select **Accounts in any organizational directory (Any Microsoft Entra ID tenant - Multitenant)**.
1. For the **Redirect URI** field, select **Single Page Application (SPA)**, and in the URL field, enter your redirect URL (and/or `http://localhost` if testing locally).
1. Confirm changes by selecting the **Register** button.

## Enable OAuth implicit flow (only for MsalProvider and TeamsProvider)

In most cases, you use Microsoft Graph Toolkit in client-side applications that consist only of client-side code. Because client-side apps can't store secrets securely, you need to use [OAuth implicit flow](/azure/active-directory/develop/v2-oauth2-implicit-grant-flow?WT.mc_id=m365-10340-wmastyka), which assumes an app's identity based on its ID and URL.

1. In the Microsoft Entra admin center, open your newly created app registration.
1. From the menu, choose **Authentication**.
1. In the **Implicit grant** section, enable both **Access tokens** and **ID tokens** options.
1. Confirm your changes by choosing the **Save** button.

## Next steps

- [Build a web application](./build-a-web-app.md) (vanilla JavaScript)
- [Build a Microsoft Teams tab](./build-a-microsoft-teams-tab.md)
- [Use the Toolkit with React](./use-toolkit-with-react.md)
- [Use the Toolkit with Angular](./use-toolkit-with-angular.md)
