---
title: "MSAL provider for Electron"
description: "The MSAL provider for electron uses msal-node to sign in users and acquire tokens to use with the Microsoft Graph"
localization_priority: Normal
author: amsrin
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

For details about how to register an app and get a client ID, see [Create an Azure Active Directory app](../get-started/add-aad-app-registration.md).

    
   
