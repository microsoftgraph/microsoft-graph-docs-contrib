---
title: "Electron provider"
description: "The MSAL provider for Electron uses MSAL-node to sign in users and acquire tokens to use with the Microsoft Graph."
ms.localizationpriority: medium
author: sebastienlevert
ms.date: 11/07/2024
---
# Electron provider

The Electron provider uses [MSAL-node](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-node) to sign in users and acquire tokens to use with Microsoft Graph in an Electron application.

To learn more about authentication providers, see [providers](./providers.md).

## Get started
### Install the packages

```bash
npm install @microsoft/mgt-element @microsoft/mgt-electron-provider
```
You need to initialize ElectronProvider in the renderer process (front end), and ElectronAuthenticator in the main process (back end).


### Initializing ElectronProvider in the renderer process (renderer.ts)

The ElectronProvider is responsible for communicating with ElectronAuthenticator (in the main process) to request access tokens and receive information regarding logged in state that are required for the components to work.

```ts
import {Providers} from '@microsoft/mgt-element';
import {ElectronProvider} from '@microsoft/mgt-electron-provider/dist/Provider';
import '@microsoft/mgt-components';

const baseURL: GraphEndpoint = 'https://graph.microsoft.us'; // change the base URL

// initialize the auth provider globally
Providers.globalProvider = new ElectronProvider(baseUrl=baseURL);
```


### Initializing ElectronAuthenticator in the main process (main.ts)

The ElectronAuthenticator is responsible for setting up the configuration variables for MSAL authentication, acquiring access tokens, and communicating with ElectronProvider.
Initialize the ElectronAuthenticator in the main process and set up the configuration variables such as client-id.

```ts
import { ElectronAuthenticator, MsalElectronConfig } from '@microsoft/mgt-electron-provider/dist/Authenticator';

let config: MsalElectronConfig = {
  clientId: '<your_client_id>',
  authority: '<your_authority_url>', //optional
  mainWindow: mainWindow,
  scopes: ['user.read'], // We recommend pre-consenting all the required scopes on the Microsoft Entra admin center
  baseURL: 'https://graph.microsoft.us' // change this if you want to use a different M365 endpoint
};

ElectronAuthenticator.initialize(config);
```

| Attribute   | Description                                                                                                                                                                                                                                                           |
| ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| clientId    | String client ID (see Creating an app/client ID). Required.                                                                                                                                                                                                           |
| scopes      | Comma-separated strings for scopes the user must consent to on sign in. Recommended.                                                                                                                                                                                  |
| authority   | Authority string - default is the common authority. For single-tenant apps, use your tenant ID or tenant name. For example, `https://login.microsoftonline.com/[your-tenant-contoso.com` or `https://login.microsoftonline.com/[your-tenant-id]`. Optional. |
| mainWindow  | Instance of the main BrowserWindow that requires authentication.                                                                                                                                                                                                      |
| cachePlugin | Cache plugin you would like to use for persistent storage of tokens. See [Microsoft Authentication Extensions for Node](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/extensions/msal-node-extensions). Optional.                       |
| base-url | The Microsoft Graph endpoint to be used for Microsoft Graph calls. It can be any of the supported [National cloud deployments](/graph/deployments). The default value is `https://graph.microsoft.com`.                                                          |

>**Note:** Currently, the provider does not support incremental support. As a best practice, be sure to consent to all the scopes that the components require.

## Create an app/client ID

<a name='add-new-application-registration-in-azure-active-directory-to-get-a-client-id'></a>

### Add new application registration in Microsoft Entra ID to get a client ID

To create an application in Microsoft Entra ID, add a new application registration, and then configure an app name and redirect URI.

To create the app in Microsoft Entra ID:

1. Go to the [Microsoft Entra admin center](https://entra.microsoft.com).
1. Expand the **Identity** menu > expand **Applications** > select **App registrations** > select the **New registration** button.
1. Enter the name for your app; for example, `My Electron-App`.
1. For the type of [supported account types](/azure/active-directory/develop/single-and-multi-tenant-apps#who-can-sign-in-to-your-app), select **Accounts in any organizational directory (Any Microsoft Entra directory - Multitenant) and personal Microsoft accounts (e.g. Skype, Xbox)**.
1. In the **Redirect URI** field, in the dropdown, select **Public client/native (mobile & desktop)**, and in the URL field, enter `msal://redirect`.
1. Confirm changes by selecting the **Register** button.

## Next steps

* Check out the step-by-step tutorial for [building an electron app](../get-started/build-an-electron-app.md).
* Take a look at a [sample Electron application](https://github.com/pnp/mgt-samples/tree/main/samples/app/electron-app) that shows how to use the Electron provider.
