---
title: "MSAL provider for Electron"
description: "The MSAL provider for electron uses msal-node to sign in users and acquire tokens to use with the Microsoft Graph"
localization_priority: Normal
author: amrutha95
---
# MSAL provider for electron

The MSAL provider uses [msal-node](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-node) to sign in users and acquire tokens to use with Microsoft Graph in an Electron application.

To learn more, see [providers](./providers.md).

## Get started

You need to initialize ElectronProvider in the renderer process (front-end), and ElectronAuthenticator in the main process (back-end).

### Initializing ElectronAuthenticator in the main process (main.ts)

Initialize the ElectronAuthenticator in the main process and set up the configuration variables such as client-id.

```ts
    import { ElectronAuthenticator } from '@microsoft/mgt-electron-provider/dist/es6/ElectronAuthenticator';

    const authProvider = new ElectronAuthenticator({
      clientId: '[client-id]]',
      authority: '[authority-url]',
      mainWindow: mainWindow 
      scopes: ['User.Read'], 
    });
```
 
| Attribute    | Description                                                                                                                                                                                                                                                           |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| client-id    | String client ID (see Creating an app/client ID). Required.                                                                                                                                                                                                           |                                                                                                                                                                               |
| scopes       | Comma separated strings for scopes the user must consent to on sign in. Optional.                                                                                                                                                                                     |
| authority    | Authority string - default is the common authority. For single-tenant apps, use your tenant ID or tenant name. For example, `https://login.microsoftonline.com/[your-tenant-name].onmicrosoft.com` or `https://login.microsoftonline.com/[your-tenant-id]`. Optional. |                                                                                                                                                                                          |
| mainWindow  | Instance of the main BrowserWindow
| isIncrementalConsentEnabled | Enable/Disable incremental consent, false by default. Incrememntal consent is currently not fully supported. |



### Initializing ElectronProvider in the renderer process (renderer.ts)

 ```ts
    import {Providers} from '@microsoft/mgt-element';
    import {ElectronProvider} from '@microsoft/mgt-electron-provider/dist/es6/ElectronProvider';

    // initialize the auth provider globally
    Providers.globalProvider = new ElectronProvider();
 ```
    
## Creating an app/client ID

### Add new application registration in Azure Active Directory to get a Client ID

To create an application in Azure Active Directory, you need to add a new application registration, and then configure an app name and Redirect URI.

To create the app in Azure Active Directory:

1. Go to the Azure portal at https://portal.azure.com.
1. From the menu, select **Azure Active Directory**.
1. From the Azure Active Directory menu, select **App registrations**.
1. From the top menu, select the **New registration** button.
1. Enter the name for your app; for example, `My Electron-App`.
1. For the type of [supported account types](/azure/active-directory/develop/single-and-multi-tenant-apps#who-can-sign-in-to-your-app), select **Accounts in any organizational directory (Any Azure AD directory - Multitenant) and personal Microsoft accounts (e.g. Skype, Xbox)**.
1. In the **Redirect URI** field, in the dropdown, select **Public client/native (mobile & desktop)**, and in the URL field, enter `msal://redirect`.
1. Confirm changes by selecting the **Register** button.

### Enable OAuth implicit flow

In most cases, you will use Microsoft Graph Toolkit in client-side applications that consist only of client-side code. Because client-side apps can't store secrets securely, you need to use [OAuth implicit flow](/azure/active-directory/develop/v2-oauth2-implicit-grant-flow?WT.mc_id=m365-10340-wmastyka), which assumes an app's identity based on its ID and URL.

1. In the Azure Portal, open your newly created app registration.
1. From the menu, choose **Authentication**.
1. In the **Implicit grant** section, enable both **Access tokens** and **ID tokens** options.
1. Confirm your changes by choosing the **Save** button.


    
   
