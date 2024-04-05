---
title: "Use the Microsoft Graph Toolkit with Electron"
description: "Get started using the Microsoft Graph Toolkit in an Electron application."
ms.localizationpriority: medium
author: sebastienlevert
---

# Use the Microsoft Graph Toolkit with Electron

This article describes the step-by-step process of using the Microsoft Graph Toolkit to create an Electron app and connect it to Microsoft 365. After completing the steps, you'll have an Electron app that shows the upcoming appointments of the currently signed in user from Microsoft 365.

## Create an Electron app

Scaffold a new Electron app using [Electron Forge](https://www.electronforge.io/). Doing this creates a new Electron app using TypeScript, which helps you write more robust code and avoid runtime errors.

```cmd
npm init electron-app@latest mgt-app -- --template=webpack-typescript
```

Change the working directory to the newly created app.

```cmd
cd mgt-app
```

Confirm that you can run the app.

```cmd
npm start
```

Open the `package.json` file and ensure that electron dev dependency version is `28.2.4`. `28.2.4` is the current maximum version for the peer dependency required by `@microsoft/mgt-electron-provider`.

Install the '@microsoft/mgt-components' package that contains all the Microsoft Graph-connected web components.

```cmd
npm i @microsoft/mgt-components
```

Install the `@microsoft/mgt-electron-provider` and `@microsoft/mgt-element` npm packages as well. These allow you to provide authentication for your app using MSAL and use the Microsoft Graph Toolkit components.

```cmd
npm i @microsoft/mgt-element @microsoft/mgt-electron-provider
```


## Create an app/client ID

<a name='add-new-application-registration-in-azure-ad-to-get-a-client-id'></a>

### Add new application registration in Microsoft Entra ID to get a client ID

To create an application in Microsoft Entra ID, you need to add a new application registration, and then configure an app name and redirect URI.

To create the app in Microsoft Entra ID:

1. Go to the [Microsoft Entra admin center](https://entra.microsoft.com).
1. Expand **Identity** > expand **Applications** > select **App registrations**.
1. From the top menu, select the **New registration** button.
1. Enter the name for your app; for example, `My Electron-App`.
1. For the type of [supported account types](/azure/active-directory/develop/single-and-multi-tenant-apps#who-can-sign-in-to-your-app), select **Accounts in any organizational directory (Any Microsoft Entra directory - Multitenant) and personal Microsoft accounts (e.g. Skype, Xbox)**.
1. In the **Redirect URI** field, in the dropdown, select **Public client/native (mobile & desktop)**, and in the URL field, enter `msal://redirect`.
1. Confirm changes by selecting the **Register** button.
1. Go to your application registration.
1. Verify that you are on the **Overview** page.
1. From the **Essentials** section, copy the value of the **Application (client) ID** property.

## Configure the Microsoft Graph Toolkit authentication provider

### Initialize a ContextBridge in your preload script

Since Electron v12, context isolation is enabled by default and it's a recommended security setting for all applications. With context isolation developers must explicitly expose APIs from their main process for use in the renderer process via a ContextBridge. For more information, see the Electron docs: [https://www.electronjs.org/docs/latest/tutorial/context-isolation](https://www.electronjs.org/docs/latest/tutorial/context-isolation)

Open the _src/preload.ts_ file and add the following code:

```ts
import { type IpcRendererEvent, contextBridge, ipcRenderer } from 'electron';
import { AuthenticationProviderOptions } from '@microsoft/microsoft-graph-client';

contextBridge.exposeInMainWorld("main", {
  electronProvider: {
    mgtAuthState: (callback: (event: IpcRendererEvent, authState: string) => void) => ipcRenderer.on('mgtAuthState', callback),
    token: (options?: AuthenticationProviderOptions) => ipcRenderer.invoke('token', options),
    login: () => ipcRenderer.invoke('login'),
    logout: () => ipcRenderer.invoke('logout'),
    approvedScopes: (callback: (event: IpcRendererEvent, scopes: string[]) => void) => ipcRenderer.on('approvedScopes', callback),
  },
});
```

### Initializing ElectronContextBridgeProvider in your renderer process

The `ElectronContextBridgeProvider` is responsible for communicating with `ElectronAuthenticator` (in the main process) to request access tokens and receive information regarding signed in state that is required for the mgt components to work.

To use Microsoft Graph Toolkit components in your applications, they must be registered in the browser window that they open. To do this, you must import the register functions for each component you want to use.

To initialize the `ElectronContextBridgeProvider` and register the Microsoft Graph Toolkit components, add the following code to the _src/renderer.ts_ file.

```ts
import { Providers } from "@microsoft/mgt-element";
import { registerMgtAgendaComponent, registerMgtLoginComponent } from '@microsoft/mgt-components';
import {
  type IContextBridgeImpl,
} from "@microsoft/mgt-electron-provider/dist/Provider";
import { ElectronContextBridgeProvider } from "@microsoft/mgt-electron-provider/dist/Provider/ElectronContextBridgeProvider";

// this provides typings for the object added to the renderer window by the preload script
declare global {
  interface Window {
    // can be named anything, like "electronApi"
    main: {
      electronProvider: IContextBridgeImpl;
    };
  }
}

// initialize the auth provider globally
const init = () => {
  Providers.globalProvider = new ElectronContextBridgeProvider(window.main.electronProvider);
  registerMgtLoginComponent();
  registerMgtAgendaComponent();
};

init();
```

### Initializing ElectronAuthenticator in your main process

The `ElectronAuthenticator` is responsible for setting up the configuration variables for MSAL authentication, acquiring access tokens, and communicating with the `ElectronContextBridgeProvider`. The `ElectronAuthenticator` is initialized in the main process and set up the configuration variables such as client ID and required scopes.

First, open _src/index.ts_ and import `ElectronAuthenticator` and `MsalElectronConfig` from `@microsoft/mgt-electron-provider` at the top of the page.

```ts
import {
  ElectronAuthenticator,
  MsalElectronConfig,
} from "@microsoft/mgt-electron-provider/dist/Authenticator";
```

Then add import the `COMMON_AUTHORITY_URL` constant.

```ts
import { COMMON_AUTHORITY_URL } from '@microsoft/mgt-electron-provider/dist/Authenticator/Constants';
```

Next, add these lines of code in the `createWindow()` function to initialize the ElectronAuthenticator, right after where `mainWindow` is declared. Replace `<your_client_id>` with the client ID from your app registration.

```ts
const config: MsalElectronConfig = {
  clientId: "<your_client_id>",
  authority: COMMON_AUTHORITY_URL, // Uses the common auth endpoint
  mainWindow: mainWindow, //This is the BrowserWindow instance that requires authentication
  scopes: [
    "user.read",
    "user.read",
    "people.read",
    "user.readbasic.all",
    "contacts.read",
    "presence.read.all",
    "presence.read",
    "user.read.all",
    "calendars.read",
  ],
};
ElectronAuthenticator.initialize(config);
```

### Add a development Content Security Policy

The application that Electron Forge scaffolds includes a default Content Security Policy (CSP), which disallows fetching data from a remote server. For development purposes, you can add a CSP that is highly permissive. For production apps, you need to craft a robust CSP that enables your application to function while reducing the attack surface for bad actors.

Open the _forge.config.ts_ file and replace the existing config object being passed to the WebpackPlugin constructor with the following config object.

```ts
{
  mainConfig,
  devContentSecurityPolicy: "default-src * self blob: data: gap:; style-src * self 'unsafe-inline' blob: data: gap:; script-src * 'self' 'unsafe-eval' 'unsafe-inline' blob: data: gap:; object-src * 'self' blob: data: gap:; img-src * self 'unsafe-inline' blob: data: gap:; connect-src self * 'unsafe-inline' blob: data: gap:; frame-src * self blob: data: gap:;",
  renderer: {
    config: rendererConfig,
    entryPoints: [
      {
        html: './src/index.html',
        js: './src/renderer.ts',
        name: 'main_window',
        preload: {
          js: './src/preload.ts',
        },
      },
    ],
  },
}
```

### Add components to your HTML page

Add some content to your app. You can now use the Microsoft Graph toolkit components in your _index.html_ page and show the user's agenda. Replace the content of the _index.html_ page with the following.

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Hello World!</title>
  </head>
  <body>
    <h1>❤️ Hello World! 🦒</h1>
    <p>Welcome to your MGT Electron application.</p>
    <mgt-login></mgt-login>
    <mgt-agenda group-by-day></mgt-agenda>
  </body>
</html>
```

#### Run your app

```cmd
npm start
```

### Add token caching capabilities to your app and enable silent sign ins (advanced)

MSAL Node supports an in-memory cache by default and provides the ICachePlugin interface to perform cache serialization, but does not provide a default way of storing the token cache to disk. If you need persistent cache storage to enable silent sign ins or cross-platform caching, we recommend using the default implementation provided by MSAL Node as an [extension](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/extensions/msal-node-extensions). You can import this plugin, and pass the instance of the cache plugin while initializing `ElectronAuthenticator`.

```ts
let config: MsalElectronConfig = {
  ...
  cachePlugin: new PersistenceCachePlugin(filePersistence) //filePersistence is the instance of type IPersistence that you will need to create
};
```

For more information about how to implement this, see the [Microsoft Authentication Library-for-js](https://github.com/AzureAD/microsoft-authentication-library-for-js/blob/dev/extensions/samples/msal-node-extensions/index.js) sample.

## Related content

- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Microsoft Q&A](/answers/products/m365#microsoft-graph).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt/issues).
