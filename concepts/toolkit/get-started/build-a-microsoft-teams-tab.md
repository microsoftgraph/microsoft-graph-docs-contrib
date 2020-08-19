---
title: "Build a Microsoft Teams tab with Microsoft Graph Toolkit"
description: "How to get started building a Microsoft Teams tab using Microsoft Graph Toolkit."
localization_priority: Normal
author: elisenyang
---

# Build a Microsoft Teams tab with Microsoft Graph Toolkit

This topic covers how to get started using Microsoft Graph Toolkit in a Microsoft Teams solution. To get started, the high-level steps you need to follow include:

1. Create a new Teams application with a custom tab
2. Set up ngrok and create a tunnel
3. Add Microsoft Graph Toolkit
4. Initialize the Microsoft Teams provider
5. Create the auth popup page
6. Add components
7. Test your app

## Create a new Teams application with a custom tab

The easiest way to create a new Teams app is to use the [Microsoft Teams Toolkit extension](https://marketplace.visualstudio.com/items?itemName=TeamsDevApp.ms-teams-vscode-extension) for Visual Studio Code. Follow the instructions to [set up a new Teams project](https://docs.microsoft.com/microsoftteams/platform/toolkit/visual-studio-code-overview#set-up-a-new-teams-project). Select **Tab** when you get to the **Add capabilities** screen.

## Set up ngrok and create a tunnel

In order to test your application later, you will need a to host your application over a public facing URL using HTTPS. Install [ngrok](https://ngrok.com/download) and create a tunnel from the Internet to localhost:3000 with the following command:

```bash
ngrok http https://localhost:3000
```

## Add Microsoft Graph Toolkit

You can use Microsoft Graph Toolkit in your application by referencing the loader directly (via unpkg) or by installing the npm package. To use the Toolkit, you will also need the [Microsoft Teams SDK](https://docs.microsoft.com/en-us/javascript/api/overview/msteams-client?view=msteams-client-js-latest).

### Use via mgt-loader
To use the Toolkit via mgt-loader, add the following references to your `public/index.html` file:

```html
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
```

### Use via npm (ES6 modules)
Using the Toolkit via ES6 modules will give you full control of the bundling process and allow you to bundle only the code you need for your application. To use the ES6 modules, add the npm packages for both the Toolkit and the Microsoft Teams SDK to your project:

```bash
npm install @microsoft/mgt @microsoft/teams-js
```

## Initialize the Teams provider

The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers.md). The [Teams provider](../providers/teams.md) handles all of the logic and interactions that need to be implemented with the Teams SDK to authenticate the user.

You can choose to initialize the provider in either your HTML or your JavaScript code. Both methods are shown below.

### Initialize in HTML

In `public/index.html`, add the Teams provider like below:

```html
<mgt-teams-provider
  client-id="<YOUR_CLIENT_ID>"
  auth-popup-url="https://<YOUR-DOMAIN>.com/AUTH-PATH"
></mgt-teams-provider>
```

Replace `<YOUR_CLIENT_ID>` with the client ID for your application and `https://<YOUR-DOMAIN>.com/AUTH-PATH` with `https://<YOUR_NGROK_URL>/auth.html`.

### Initialize in JavaScript

Locate the `src/components/App.js` file in your project directory. Import the Teams Provider and initialize the provider:

```js
import * as microsoftTeams from "@microsoft/teams-js/dist/MicrosoftTeams";
import { Providers, TeamsProvider } from '@microsoft/mgt';

TeamsProvider.microsoftTeamsLib = microsoftTeams;
Providers.globalProvider = new TeamsProvider ({
    clientId: '<YOUR_CLIENT_ID>',
    authPopupUrl: '/auth'
})
```
Replace `<YOUR_CLIENT_ID>` with the client ID for your application.

### Creating an app/client ID
In order to get a client ID, you need to [register your application](https://docs.microsoft.com/graph/auth-register-app-v2) in Azure AD. 
>**Note**: MSAL only supports the Implicit Flow for OAuth. Make sure to enable Implicit Flow in your application in the Azure Portal (it is not enabled by default). Under **Authentication**, find the **Implicit grant** section and select the checkboxes for **Access tokens** and **ID tokens**. 

## Create the auth popup page

In order to allow users to sign in, you need to provide a URL that the Teams app will open in a popup to  follow the authentication flow. The URL needs to be in your domain, and all this page needs to do is call the `TeamsProvider.handleAuth()` method.

### Create using HTML
You can do this in your HTML by adding a new `auth.html` file in the `public` folder (or whichever folder your `index.html` is in) and adding the following code: 

```html
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js">

<script>
  mgt.TeamsProvider.handleAuth();
</script>
```

### Create using modules
If you want use a module, add a new file called `Auth.js` to the `components` folder (or whichever folder your `App.js` is in) and add the following code:

```js
import React from 'react';
import * as microsoftTeams from '@microsoft/teams-js/dist/MicrosoftTeams';
import { TeamsProvider } from '@microsoft/mgt';

function Auth() {
    TeamsProvider.microsoftTeamsLib = microsoftTeams;
    TeamsProvider.handleAuth()
    return (
        <div>Signing you in</div>
    )
}

export default Auth;
```




