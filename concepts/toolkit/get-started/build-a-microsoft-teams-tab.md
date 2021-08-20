---
title: "Build a Microsoft Teams tab with the Microsoft Graph Toolkit"
description: "Get started building a Microsoft Teams tab using the Microsoft Graph Toolkit."
localization_priority: Normal
author: simonagren
---

# Build a Microsoft Teams tab with the Microsoft Graph Toolkit

This topic covers how to get started using the Microsoft Graph Toolkit in a Microsoft Teams solution. This guide is for a single page app without single sign-on (SSO) and does not require a backend. For implementing SSO with a custom backend, see [Build a Microsoft Teams SSO Tab](./build-a-microsoft-teams-sso-tab.md).

Getting started involves the following steps:

1. Add the Microsoft Graph Toolkit.
1. Create the auth popup page.
1. Creating an app/client ID
1. Initialize the Teams SSO Provider.
1. Add components.
1. Test your app.

## Add the Microsoft Graph Toolkit

You can use the Microsoft Graph Toolkit in your application by referencing the loader directly (via unpkg) or by installing the npm package. To use the Toolkit, you will also need the [Microsoft Teams SDK](/javascript/api/overview/msteams-client?view=msteams-client-js-latest&preserve-view=true#using-the-sdk).

### Use via mgt-loader
To use the Toolkit and the Teams SDK via the loaders, add the reference in a script to your code:

```html
<!-- Microsoft Teams sdk must be referenced before the toolkit -->
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
```

### Use via npm (ES6 modules)
Using the Toolkit via ES6 modules will give you full control of the bundling process and allow you to bundle only the code you need for your application. To use the ES6 modules, add the npm packages for both the Toolkit and the Microsoft Teams SDK to your project:

```cmd
npm install @microsoft/teams-js @microsoft/mgt-element @microsoft/mgt-teams-sso-provider
```

## Create the auth popup page

In order to allow users to sign in, you need to provide a URL that the Teams app will open in a popup to follow the authentication flow. The URL needs to be in your domain, and all this page needs to do is call the `TeamsSSOProvider.handleAuth()` method.

Here is an example of an `auth.html` page that handles the auth flow in the popup:

```html
<!DOCTYPE html>
<html>
  <head>
    <script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
  </head>

  <body>
    <script>
      mgt.TeamsSSOProvider.handleAuth();
    </script>
  </body>
</html>
```

## Creating an app/client ID
To get a client ID, you need to register an Azure Active Directory application. Follow the steps in the [Create an Azure Active Directory app](./add-aad-app-registration.md) article.

Make sure to set the `redirect URI` in your app registration to point to your auth.html page. For example, if you are running your app on localhost:3000, set the redirect URI to https://localhost:3000/auth.html.

> Note: Make sure to set the `redirect URI` as a `Single Page Application`. Teams SSO Provider makes use of MSAL 2 Provider behind the scenes.

## Initialize the Teams SSO Provider

The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers/providers.md). The [Teams SSO Provider](../providers/teamssso.md) handles all of the logic and interactions that need to be implemented with the Teams SDK to authenticate the user.

You can choose to initialize the provider in either your HTML or your JavaScript code. 

### Initialize in HTML

Add the `mgt-teams-sso-provider` component to your HTML page as shown.

```html
<mgt-teams-sso-provider 
  client-id="<YOUR_CLIENT_ID>"
  auth-popup-url="/auth.html"
  scopes="user.read,user.read.all,mail.readBasic,people.read.all,sites.read.all,user.readbasic.all,contacts.read,presence.read,presence.read.all,tasks.readwrite,tasks.read"
  ></mgt-teams-sso-provider>
```

Replace `<YOUR_CLIENT_ID>` with the client ID for your application. 

### Initialize in JavaScript

To initialize the provider in your JavaScript code, add the following code to your application:

```ts
import {Providers} from '@microsoft/mgt-element';
import {TeamsSSOProvider} from '@microsoft/mgt-teams-sso-provider';
import * as MicrosoftTeams from "@microsoft/teams-js";

TeamsSSOProvider.microsoftTeamsLib = MicrosoftTeams;

Providers.globalProvider = new TeamsSSOProvider({
  clientId: `<YOUR_CLIENT_ID>`,
  authPopupUrl: 'auth.html',
  scopes: ['user.read','user.read.all','mail.readBasic','people.read.all','sites.read.all','user.readbasic.all','contacts.read','presence.read','presence.read.all','tasks.readwrite','tasks.read'],
});
```
Replace `<YOUR_CLIENT_ID>` with the client ID for your application.

## Add components

Now, you're ready to add any of the Microsoft Graph Toolkit components. 

You can add components to your HTML as you normally would. For example, to add the Login component add the below code to your HTML:

```HTML
<mgt-login></mgt-login>
```

Or, you can add the components in JSX. We recommend using the `mgt-react` library. To learn more, see [Using Microsoft Graph Toolkit with React](./use-toolkit-with-react.md)

First, install `mgt-react`:

```Command Line
npm install @microsoft/mgt-react
```

Import the components you want to use from the `mgt-react` library. For example, to add the `Login` component use:

```JavaScript
import { Login } from "@microsoft/mgt-react"
```

Then, add the the component to the `return()` statement of the `render()` method:

```JavaScript
render() {
  return(
    <Login />
  );
}
```

## Test your application
For a step-by-step tutorial that includes testing the application in Microsoft Teams, see [building a Teams tab](https://developer.microsoft.com/graph/blogs/a-lap-around-microsoft-graph-toolkit-day-10-microsoft-graph-toolkit-teams-provider/).


## Next Steps
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Stack Overflow](https://aka.ms/mgt-question).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt).
