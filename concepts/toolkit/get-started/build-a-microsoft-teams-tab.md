---
title: "Build a Microsoft Teams tab with the Microsoft Graph Toolkit"
description: "Get started building a Microsoft Teams tab using the Microsoft Graph Toolkit."
ms.localizationpriority: medium
author: sebastienlevert
---

# Build a Microsoft Teams tab with the Microsoft Graph Toolkit

This topic covers how to get started using the Microsoft Graph Toolkit in a Microsoft Teams solution. This guide is for a single page app without single sign-on (SSO) and does not require a backend. If you're implementing SSO with a custom backend, see [Build a Microsoft Teams tab (SSO)](./build-a-microsoft-teams-sso-tab.md).

Building a tab involves the following steps:

1. Add the Microsoft Graph Toolkit.
1. Create the auth popup page.
1. Creating an app/client ID
1. Initialize the Teams MSAL2 Provider.
1. Add components.
1. Test your app.

## Add the Microsoft Graph Toolkit

You can use the Microsoft Graph Toolkit in your application by referencing the loader directly (via unpkg) or by installing the npm packages. To use the Toolkit, you will also need the [Microsoft Teams SDK](/javascript/api/overview/msteams-client?view=msteams-client-js-latest&preserve-view=true#using-the-sdk).

# [unpkg](#tab/unpkg)
To use the Toolkit and the Teams SDK via the loaders, add the reference in a script to your code:

```html
<!-- Microsoft Teams sdk must be referenced before the toolkit -->
<script src="https://unpkg.com/@microsoft/teams-js@2/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt@2/dist/bundle/mgt-loader.js"></script>
```

# [npm](#tab/npm)
Using the Toolkit via ES6 modules will give you full control of the bundling process and allow you to bundle only the code you need for your application. To use the ES6 modules, add the npm packages for both the Toolkit and the Microsoft Teams SDK to your project:

```cmd
npm install @microsoft/teams-js @microsoft/mgt-element @microsoft/mgt-teams-msal2-provider @microsoft/mgt-components
```

---

## Create the auth popup page

In order to allow users to sign in, you will need a page in your app that Teams will open in a popup to follow the authentication flow. The path to the page can be anything as long as it is in the same domain as your app (for example, https://yourdomain.com/tabauth). The only requirement for this page is to call the `TeamsMsal2Provider.handleAuth()` method, but you can add any content or loading progress you want.

The following is an example of basic page that handles the auth flow in the popup.

# [unpkg](#tab/unpkg)
```html
<!DOCTYPE html>
<html>
  <head>
    <script src="https://unpkg.com/@microsoft/teams-js@2/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@microsoft/mgt@2/dist/bundle/mgt-loader.js"></script>
  </head>

  <body>
    <script>
      mgt.TeamsMsal2Provider.handleAuth();
    </script>
  </body>
</html>
```
# [npm](#tab/npm)
```js
import { TeamsMsal2Provider } from '@microsoft/mgt-teams-msal2-provider';

TeamsMsal2Provider.handleAuth();
```

---

## Creating an app/client ID
To get a client ID, you need to register an Azure Active Directory application. Follow the steps in the [Create an Azure Active Directory app](./add-aad-app-registration.md) article.

Make sure to set the `redirect URI` in your app registration to point to the auth page you created in the previous step. For example, https://localhost:3000/tabauth.

> **Note:** Make sure to set the `redirect URI` as a `Single Page Application (SPA)`. Teams MSAL2 Provider makes use of MSAL2 Provider behind the scenes.

## Initialize the Teams MSAL2 Provider

The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers/providers.md). The [Teams MSAL2 Provider](../providers/teams-msal2.md) handles all the logic and interactions that need to be implemented with the Teams SDK to authenticate the user.

You can choose to initialize the provider in either your HTML or your JavaScript code.

# [html](#tab/html)


Add the `mgt-teams-msal2-provider` component to your HTML page as shown.

```html
<mgt-teams-msal2-provider
  client-id="<YOUR_CLIENT_ID>"
  auth-popup-url="/tabauth"
  scopes="User.Read,Mail.ReadBasic"
  ></mgt-teams-msal2-provider>
```

Replace `<YOUR_CLIENT_ID>` with the client ID for your application, and replace the `auth-popup-url` with the full or relative path to your auth page.

# [js](#tab/js)


To initialize the provider in your JavaScript code, add the following code to your application:

```ts
import {Providers} from '@microsoft/mgt-element';
import {TeamsMsal2Provider} from '@microsoft/mgt-teams-msal2-provider';
import * as MicrosoftTeams from "@microsoft/teams-js";

TeamsMsal2Provider.microsoftTeamsLib = MicrosoftTeams;

Providers.globalProvider = new TeamsMsal2Provider({
  clientId: `<YOUR_CLIENT_ID>`,
  authPopupUrl: '/tabauth',
  scopes: ['User.Read','Mail.ReadBasic'],
});
```
Replace `<YOUR_CLIENT_ID>` with the client ID for your application, and replace the `authPopupUrl` with the full or relative path to your auth page.

---
## Add components

Now, you're ready to add any of the Microsoft Graph Toolkit components. The first component you will likely need to add is the Login component.

```HTML
<mgt-login></mgt-login>
```

The Login component renders a "Sign In" button that guides the user through the sign in process and integrates with any of the providers to handle the authentication. After the user has signed in, all other toolkit components will be able to call Microsoft Graph automatically. The providers also expose an authenticated Microsoft Graph client for making API calls or getting access tokens. For details, see [Using the providers](../providers/providers.md).

If you're using React, we recommend using the React components instead from the `mgt-react` library. To learn more, see [Using Microsoft Graph Toolkit with React](./use-toolkit-with-react.md)

## Next Steps
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Microsoft Q&A](/answers/topics/microsoft-graph-toolkit.html).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt).
- Check out the [Microsoft Teams samples](https://github.com/OfficeDev/Microsoft-Teams-Samples/tree/main/samples/tab-graph-toolkit).
