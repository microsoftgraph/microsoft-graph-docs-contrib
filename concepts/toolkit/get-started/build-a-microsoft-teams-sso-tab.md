---
title: "Build a Microsoft Teams SSO tab with the Microsoft Graph Toolkit"
description: "Get started building a Microsoft Teams SSO tab using the Microsoft Graph Toolkit."
localization_priority: Normal
author: simonagren
---

# Build a Microsoft Teams SSO tab with the Microsoft Graph Toolkit

This topic covers how to get started using the Microsoft Graph Toolkit in a Microsoft Teams SSO solution. Getting started involves the following steps:

1. Create a new Teams application with a custom tab.
2. Install and run the app locally.
3. Add the Microsoft Graph Toolkit.
4. Create the auth popup page.
5. Configure the Azure AD application registration.
6. Create the backend
7. Initialize the Teams SSO Provider.
8. Add components.
9. Test your app.

## Create a new Teams application with a custom tab

The easiest way to create a new Teams app is to use the [Microsoft Teams Toolkit extension](https://marketplace.visualstudio.com/items?itemName=TeamsDevApp.ms-teams-vscode-extension) for Visual Studio Code. Follow the instructions to [set up a new Teams project](/microsoftteams/platform/toolkit/visual-studio-code-overview#set-up-a-new-teams-project). 

1. On the **Select capabilities** step, the **Tab** capability is already selected. Press **OK**.
2. On the **Frontend hosting type** step, select **Azure**
3. On the **Cloud resources** step, leave it with **0 Selected**. Press **OK**.
4. On the **Programming Language step**, choose **TypeScript**.
5. Select a **Workspace Folder** > enter the **Application name**. A folder is created within your workspace folder for the project you are creating

Your Teams app is created within a few seconds. 

## Install and run the app locally
When you run the app for the first time all dependencies are downloaded and the app is built. Teams Toolkit also registers and configures an **Azure AD application** for you.

To build and run your app locally:
1. From Visual Studio Code, press **F5** to run your application in debug mode. You may be prompted to sign in via the **Teams Toolkit**. If so, sign in with your **M365 account**.

> The toolkit prompts you to install a local certificate if required. This certificate allows Teams to load your application from `https://localhost`. Select **yes** when the dialog appears.

2. Your web browser is started to run the application. Select to use the **web app** instead of the **Microsoft Teams client**.

3. You may be prompted to sign in. If so, sign in with your **M365 account**.

4. When prompted to install the app onto Teams, press Add.

You should now be presented with the **Welcome sample** from the **Teams Toolkit**. Feel free to stop the debugging for now.

## Add the Microsoft Graph Toolkit

You can use the Microsoft Graph Toolkit in your application by referencing the loader directly (via unpkg) or by installing the npm package. To use the Toolkit, you will also need the [Microsoft Teams SDK](/javascript/api/overview/msteams-client?view=msteams-client-js-latest&preserve-view=true#using-the-sdk).

### Use via mgt-loader
To use the Toolkit and the Teams SDK via the loaders, add the following references inside the `<head>` of the `public/index.html` file:

```html
<!-- Microsoft Teams sdk must be referenced before the toolkit -->
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
```

### Use via npm (ES6 modules)
Using the Toolkit via ES6 modules will give you full control of the bundling process and allow you to bundle only the code you need for your application. The Microsoft Teams SDK has already been added to the project. To use the ES6 modules, make sure you are in the **tabs** folder and add the following npm packages for the Toolkit. 

```cmd
npm install @microsoft/mgt-element @microsoft/mgt-teams-sso-provider
```

## Create the auth popup page

In order to allow users to sign in, you need to provide a URL that the Teams app will open in a popup to follow the authentication flow. The URL needs to be in your domain, and all this page needs to do is call the `TeamsSSOProvider.handleAuth()` method.

You can do this by adding a new `TeamsAuth.tsx` file in the `src/components` folder and adding the following code: 

```ts
import { TeamsSSOProvider } from "@microsoft/mgt-teams-sso-provider";
import React from "react";
/**
 * This component is used to handle the Microsoft Teams Auth
 * for the Microsoft Graph Toolkit
 * Teams SSO Provider
 */
class TeamsAuth extends React.Component {
  render() {
    
    TeamsSSOProvider.handleAuth();

    return (
      <div>
        <h1>Signing you in</h1>
      </div>
    );
  }
}

export default TeamsAuth;
```

Then locate the `src/components/App.tsx` file in your project directory. Import the `TeamsAuth` component and add the following snippet before the `return()`:

```ts
if (window.location.pathname.startsWith('/teamsauth')) {
  return <TeamsAuth />
}
```

## Configure the Azure AD application registration
As mentioned earlier, an Azure Active Directory application has been registered. Both the **client ID** and **client secret** has been added to `local.env` in the `.fx` folder as **AUTH_CLIENT_ID** and **AUTH_CLIENT_SECRET**.

1. Navigate to the Azure portal and find the application registration (same name as the app).

2. Navigate to redirect-URI: 
- Under **Redirect URI**, set the first drop-down to `Single Page Application` and set the value to `https://localhost:3000/teamsauth`

3. Under **Supported account types** change to **Accounts in any organization...**

4. Navigate to **API permissions** under **Manage**. Select **Add a permission** > **Microsoft Graph** > **Delegated permissions**, then add the following permissions   
    - `email`, `offline_access`, `openid`, `profile`, `User.Read`
    - Select **Add permissions** when done

5. (OPTIONAL) If you want to pre-consent the scopes that the Microsoft Graph Toolkit components used in this sample, add the following permissions: 
    - `user.read.all, mail.readBasic, people.read.all, sites.read.all, user.readbasic.all, contacts.read, presence.read, presence.read.all, tasks.readwrite, tasks.read`
    
    - If you use different components or plan to use other Microsoft Graph APIs, you may require additional permissions. See the [documentation](https://docs.microsoft.com/graph/toolkit/overview) for each component for details on required permissions.

    - To pre-consent as an admin, select **Grant admin consent**, then select **Yes**

## Create the backend

The backend could be any backend that enables exchanging the Microsoft Teams authentication token with a token that can be used to call Microsoft Graph via the [on-behalf-of flow](https://docs.microsoft.com/azure/active-directory/develop/v2-oauth2-on-behalf-of-flow). 

Have a look at the [Teams SSO Node Sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/main/samples/teams-sso-node) for reference.

### Server folder
At the app root, create a folder named **server** (the same level as the **tabs** folder). Inside of the folder, create and copy the values from the sample:

1. `package.json`
2. `tsconfig.ts`
3. `.env` - Get values from `local.env` in the app `.fx` folder
  - **AUTH_CLIENT_ID** value and copy to **CLIENT_ID**
  - **AUTH_CLIENT_SECRET** value and copy to **APP_SECRET**

### Src folder
Create a folder named **src** inside of the **server** folder. Inside of the new folder, create:

1. `auth.ts`
Add the following code to the file:

```ts
import * as msal from '@azure/msal-node';
import { NextFunction, Request, Response } from 'express';
import jwt, { JwtHeader, SigningKeyCallback } from 'jsonwebtoken';
import jwksClient from 'jwks-rsa';
import jwt_decode from 'jwt-decode';

/**
 * Validates a JWT
 * @param {Request} req - The incoming request
 * @param {Response} res - The outgoing response
 * @returns {Promise<string | null>} - Returns the token if valid, returns null if invalid
 */
export function validateJwt(req: Request, res: Response, next: NextFunction): void {
  const authHeader = req.headers.authorization!;
  const ssoToken = authHeader.split(' ')[1];
  if (ssoToken) {
    const validationOptions = {
      audience: process.env.CLIENT_ID,
    };
    jwt.verify(ssoToken, getSigningKey, validationOptions, (err, payload) => {
      if (err) {
        return res.sendStatus(403);
      }
      next();
    });
  } else {
    res.sendStatus(401);
  }
}

/**
 * Parses the JWT header and retrieves the appropriate public key
 * @param {JwtHeader} header - The JWT header
 * @param {SigningKeyCallback} callback - Callback function
 */
function getSigningKey(header: JwtHeader, callback: SigningKeyCallback): void {
  const client = jwksClient({
    jwksUri: 'https://login.microsoftonline.com/common/discovery/keys'
  });
  client.getSigningKey(header.kid!, (err, key) => {
    if (err) {
      callback(err, undefined);
    } else {
      callback(null, key.getPublicKey());
    }
  });
}

/**
 * Gets an access token for the user using the on-behalf-of flow
 * @param authHeader - The Authorization header value containing a JWT bearer token
 * @returns {Promise<string | null>} - Returns the access token if successful, null if not
 */
export async function getAccessTokenOnBehalfOf(req: Request, res: Response): Promise<void> {
  // The token has already been validated, just grab it
  const authHeader = req.headers.authorization!;
  const ssoToken = authHeader.split(' ')[1];

  // Create an MSAL client
  const msalClient = new msal.ConfidentialClientApplication({
    auth: {
      clientId: req.body.clientid,
      clientSecret: process.env.APP_SECRET
    }
  });

  try {
    const result = await msalClient.acquireTokenOnBehalfOf({
      authority: `https://login.microsoftonline.com/${jwt_decode<any>(ssoToken).tid}`,
      oboAssertion: ssoToken,
      scopes: req.body.scopes,
      skipCache: true
    });
    res.json({ access_token: result?.accessToken });
  } catch (error) {
    if (error.errorCode === 'invalid_grant' || error.errorCode === 'interaction_required') {
      // This is expected if it's the user's first time running the app ( user must consent ) or the admin requires MFA
      res.status(403).json({ error: 'consent_required' }); // This error triggers the consent flow in the client.
    } else {
      // Unknown error
      res.status(500).json({ error: error.message });
    }
  }
}
```

2. `server.ts`
Add the following code to the file:

```ts
import dotenv from 'dotenv';
import express from 'express';
import path from 'path';
import { getAccessTokenOnBehalfOf, validateJwt } from './auth';

var cors = require('cors');

// Load .env file
dotenv.config();

const app = express();
const PORT = process.env.port || process.env.PORT || 8000;

// Support JSON payloads
app.use(express.json());
app.use(express.static(path.join(__dirname, 'client')));

// enable cors for localhost for this sample
app.use(cors());

// An example for using POST and with token validation using middleware
app.post('/api/token', validateJwt, async (req, res) => {
  await getAccessTokenOnBehalfOf(req, res);
});

app.listen(PORT, () => {
  console.log(`⚡️[server]: Server is running at http://localhost:${PORT}`);
});
```

## Initialize the Teams SSO Provider

The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers/providers.md). The [Teams SSO Provider](../providers/teamssso.md) handles all of the logic and interactions that need to be implemented with the Teams SDK to authenticate the user.


For SSO-mode, make sure to provide `sso-url` / `ssoUrl` and have it point to you backend API.

### Initialize in HTML

In `tabs\public/index.html`, add the Teams SSO provider into the `<body>`, as shown.

```html
<mgt-teams-sso-provider 
  client-id="<YOUR_CLIENT_ID>"
  auth-popup-url="/teamsauth"
  scopes="user.read,user.read.all,mail.readBasic,people.read.all,sites.read.all,user.readbasic.all,contacts.read,presence.read,presence.read.all,tasks.readwrite,tasks.read"
  sso-url="http://localhost:8000/api/token"
  http-method="POST"
  ></mgt-teams-provider>
```

Replace `<YOUR_CLIENT_ID>` with the client ID for your application. 

### Initialize in JavaScript

To initialize the provider in your JavaScript code, Locate the `src/components/App.tsx` file in your project directory. Import the Teams Provider and initialize the provider.

```ts
import {Providers} from '@microsoft/mgt-element';
import {TeamsSSOProvider, HttpMethod} from '@microsoft/mgt-teams-sso-provider';
import * as MicrosoftTeams from "@microsoft/teams-js";

TeamsSSOProvider.microsoftTeamsLib = MicrosoftTeams;

Providers.globalProvider = new TeamsSSOProvider({
  clientId: `<YOUR_CLIENT_ID>`,
  authPopupUrl: '/teamsauth',
  scopes: ['user.read','user.read.all','mail.readBasic','people.read.all','sites.read.all','user.readbasic.all','contacts.read','presence.read','presence.read.all','tasks.readwrite','tasks.read'],
  ssoUrl: 'http://localhost:8000/api/token',
  httpMethod: HttpMethod.POST
});
```
Replace `<YOUR_CLIENT_ID>` with the client ID for your application.

## Add components

Now, you're ready to add any of the Microsoft Graph Toolkit components to your tab. 

You can add components to your HTML as you normally would. For example, to add the `Person` component add the below code to the body of your `index.html`:

```HTML
<mgt-person person-query="me"></mgt-person>
```

Or, you can add the components in JSX to the Tab component. We recommend using the `mgt-react` library if you created your Teams app using the Microsoft Teams Toolkit extension. To learn more, see [Using Microsoft Graph Toolkit with React](./use-toolkit-with-react.md)

First, install `mgt-react`:

```Command Line
npm install @microsoft/mgt-react
```

Locate the `src/components/Tab.tsx` file and import the components you want to use from the `mgt-react` library. For example, to add the `Person` component use:

```JavaScript
import { Person } from "@microsoft/mgt-react"
```

Then, add the the component to the `return()` statement of the `render()` method of `Tab`:

```JavaScript
render() {
  return(
    <Person personQuery="me" />
  );
}
```

## Test your application

First, make open a terminal and make sure you are in the **server** folder.

1. Run `npm install` to install the dependencies
2. Run `npm start` to start the backend service at `localhost:8000` 

Now, fron Visual Studio Code you can once again press **F5** from  to repeat the procedure and run your application in debug mode. 

If everything has been configured correctly, you will see the `Person` component rendered without the need to log in.
> IMPORTANT! If you haven't pre-consented, you might have to consent via a dialog prompt. 

## Next Steps
- Check out this step-by-step tutorial on [building a Teams tab](https://developer.microsoft.com/graph/blogs/a-lap-around-microsoft-graph-toolkit-day-10-microsoft-graph-toolkit-teams-provider/).
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Stack Overflow](https://aka.ms/mgt-question).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt).
