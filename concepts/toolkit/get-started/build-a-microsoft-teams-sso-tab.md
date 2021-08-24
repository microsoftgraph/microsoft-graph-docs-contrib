---
title: "Build a Microsoft Teams SSO tab with the Microsoft Graph Toolkit"
description: "Get started building a Microsoft Teams SSO tab using the Microsoft Graph Toolkit."
localization_priority: Normal
author: simonagren
---

# Build a Microsoft Teams Single Sign-On (SSO) tab with the Microsoft Graph Toolkit

This topic covers how to get started using the Microsoft Graph Toolkit in a Microsoft Teams solution. This guide is for a single page app with single sign-on (SSO) and does require a backend. For implementing a Teams tab with interactive login, see [Build a Microsoft Teams Tab](./build-a-microsoft-teams-tab.md).

Getting started involves the following steps: 

1. Add the Microsoft Graph Toolkit.
1. Create the auth popup page.
1. Creating an app/client ID
6. Create the backend
7. Initialize the Teams Msal2 Provider.
8. Add components.
9. Test your app.

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
npm install @microsoft/teams-js @microsoft/mgt-element @microsoft/mgt-teams-msal2-provider
```

## Create the auth popup page

If you need a user to consent to a permission, you need to provide a URL that the Teams app will open in a popup to follow the authentication flow. The URL needs to be in your domain, and all this page needs to do is call the `TeamsMsal2Provider.handleAuth()` method.

You can do this by adding a new `auth.html` file (which should be at the same level as `index.html`) and adding the following code:

```html
<!DOCTYPE html>
<html>
  <head>
    <script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
  </head>

  <body>
    <script>
      mgt.TeamsMsal2Provider.handleAuth();
    </script>
  </body>
</html>
```

## Creating an app/client ID
Have a look at the section [Creating the AAD registration](https://github.com/microsoftgraph/microsoft-graph-toolkit/blob/main/samples/teams-sso-node/readme.md#creating-the-aad-registration) from the `readme` of the [Teams SSO Node Sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/main/samples/teams-sso-node). This involves registering the AAD application and configuring it for SSO.

## Create the backend

The backend could be any backend that enables exchanging the Microsoft Teams authentication token with a token that can be used to call Microsoft Graph via the [on-behalf-of flow](https://docs.microsoft.com/azure/active-directory/develop/v2-oauth2-on-behalf-of-flow). 

Have a look at the [Teams SSO Node Sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/main/samples/teams-sso-node) for reference.

### Server folder
At the app root, create a folder named **server** (the same level as the **tabs** folder). Inside of the folder, create and copy the values from the sample:

1. `package.json`
2. `tsconfig.ts`
3. `.env`
  - Set **CLIENT_ID** to the client ID of your application
  - Set the **APP_SECRET** you created

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

## Initialize the Teams Msal2 Provider

The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers/providers.md). The [Teams Msal2 Provider](../providers/teams-msal2.md) handles all of the logic and interactions that need to be implemented with the Teams SDK to authenticate the user.

For SSO-mode, make sure to provide `sso-url` / `ssoUrl` and have it point to your backend API.

### Initialize in HTML

Add the `mgt-teams-msal2-provider` into the HTML `<body>`

```html
<mgt-teams-msal2-provider 
  client-id="<YOUR_CLIENT_ID>"
  auth-popup-url="/auth.html"
  scopes="user.read,user.read.all,mail.readBasic,people.read.all,sites.read.all,user.readbasic.all,contacts.read,presence.read,presence.read.all,tasks.readwrite,tasks.read"
  sso-url="http://localhost:8000/api/token"
  http-method="POST"
  ></mgt-teams-msal2-provider>
```

Replace `<YOUR_CLIENT_ID>` with the client ID for your application. 

### Initialize in JavaScript

To initialize the provider in your JavaScript code, import the Teams Provider and initialize the provider.

```ts
import {Providers} from '@microsoft/mgt-element';
import {TeamsMsal2Provider, HttpMethod} from '@microsoft/mgt-teams-msal2-provider';
import * as MicrosoftTeams from "@microsoft/teams-js";

TeamsMsal2Provider.microsoftTeamsLib = MicrosoftTeams;

Providers.globalProvider = new TeamsMsal2Provider({
  clientId: `<YOUR_CLIENT_ID>`,
  authPopupUrl: '/auth.html',
  scopes: ['user.read','user.read.all','mail.readBasic','people.read.all','sites.read.all','user.readbasic.all','contacts.read','presence.read','presence.read.all','tasks.readwrite','tasks.read'],
  ssoUrl: 'http://localhost:8000/api/token',
  httpMethod: HttpMethod.POST
});
```
Replace `<YOUR_CLIENT_ID>` with the client ID for your application.

## Add components

Now, you're ready to add any of the Microsoft Graph Toolkit components. 

You can add components to your HTML as you normally would. For example, to add the `Person` component add the below code to your HTML:

```HTML
<mgt-person person-query="me"></mgt-person>
```

Or, you can add the components in JSX. We recommend using the `mgt-react` library. To learn more, see [Using Microsoft Graph Toolkit with React](./use-toolkit-with-react.md)

First, install `mgt-react`:

```Command Line
npm install @microsoft/mgt-react
```

Import the components you want to use from the `mgt-react` library. For example, to add the `Person` component use:

```JavaScript
import { Person } from "@microsoft/mgt-react"
```

Then, add the the component to the `return()` statement of the `render()` method:

```JavaScript
render() {
  return(
    <Person personQuery="me" />
  );
}
```

## Test your application
Have a look at the section [Creating a Teams App](https://github.com/microsoftgraph/microsoft-graph-toolkit/blob/main/samples/teams-sso-node/readme.md#creating-a-teams-app) from the `readme` of the [Teams SSO Node Sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/main/samples/teams-sso-node).

If everything has been configured correctly, you will see the `Person` component rendered without the need to log in.
> IMPORTANT! If you haven't pre-consented, you might have to consent via a dialog prompt. 

## Next Steps
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Stack Overflow](https://aka.ms/mgt-question).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt).
