---
title: "Build a Microsoft Teams SSO tab with the Microsoft Graph Toolkit"
description: "Get started building a Microsoft Teams SSO tab using the Microsoft Graph Toolkit."
ms.localizationpriority: medium
author: sebastienlevert
---

# Build a Microsoft Teams SSO tab with the Microsoft Graph Toolkit

This topic describes how to use the Microsoft Graph Toolkit in a Microsoft Teams solution. This guide is for a single-page app with single sign-on (SSO) and does require a backend. If you're implementing a Teams tab with interactive sign in, see [Build a Microsoft Teams Tab](./build-a-microsoft-teams-tab.md).

Building an SSO tab involves the following steps:

1. Add the Microsoft Graph Toolkit.
1. Create the auth popup page.
1. Creating an app/client ID
6. Create the backend
7. Initialize the Teams MSAL2 provider.
8. Add components.
9. Test your app.

## Add the Microsoft Graph Toolkit

You can use the Microsoft Graph Toolkit in your application by referencing the loader directly (via unpkg) or by installing the npm packages. To use the Toolkit, you will also need the [Microsoft Teams SDK](/javascript/api/overview/msteams-client?view=msteams-client-js-latest&preserve-view=true#using-the-sdk).

# [unpkg](#tab/unpkg)
To use the Toolkit and the Teams SDK via the loaders, add the reference in a script to your code:

```HTML
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

Unless your application is pre-consented by an admin, your users might need to consent to permissions. To enable this, you will need to provide a page that the Teams app will open in a popup to follow the authentication flow. You can have the path to the page be anything as long as it is in the same domain as your app (for example, https://yourdomain.com/tabauth). The only requirement for this page is to call the `TeamsMsal2Provider.handleAuth()` method, but you can add any content or loading progress you want.


The following is an example of a basic page that handles the auth flow in the popup.

# [unpkg](#tab/unpkg)
```HTML
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
```JavaScript
import { TeamsMsal2Provider } from '@microsoft/mgt-teams-msal2-provider';

TeamsMsal2Provider.handleAuth();
```

---

## Creating an app/client ID
Your tab needs to run as a registered Azure AD application to get an access token from Azure AD. Register the app in your tenant and give Microsoft Teams permission to get access tokens on its behalf:

1. Open a browser and go to the [Azure Active Directory admin center](https://aad.portal.azure.com). Sign in using a **personal account** (Microsoft Account) or **Work or School Account**.

1. On the left pane, select **Azure Active Directory**, then select **App registrations** under **Manage**.

1. Select **New registration**. On the **Register an application** page, set the values as follows:

    - Set **Name** to `Node.js Teams SSO` (or a name of your choice).
    - Set **Supported account types** to **Accounts in any organizational directory and personal Microsoft accounts**.
    - Under **Redirect URI**, set the first dropdown to `Single Page Application` and set the value to the auth page URL you created in the previous step; for example, `https://myapp.ngrok.io/tabauth`.

1. From the app overview page, copy the value of the **Application (client) ID** for later. You will need this value when you create a new provider and in your backend.

1. Under **Manage**, go to **Certificates & secrets**. Select the **New client secret** button. Enter a value in **Description** and select one of the options for **Expires** and select **Add**.

1. Copy the client secret value before you leave this page. You will need this for your backend service.

    >[!IMPORTANT]
    >This client secret is never shown again, so make sure you copy it now.

1. Under **Manage**, go to **API permissions**. Select **Add a permission** > **Microsoft Graph** > **Delegated permissions**, then add the following permissions: `email`, `offline_access`, `openid`, `profile`, `User.Read`. Select **Add permissions**.

1. (OPTIONAL) If you want to pre-consent to any other scopes, you can add more permissions. If you use different components or plan to use other Microsoft Graph APIs, you might require additional permissions. For details about required permissions, see the [documentation](../overview.md) for each component.

    - To pre-consent as an admin, select **Grant admin consent**, then select **Yes**.

1.  Under **Manage**, go to **Expose an API**. On the top of the page, next to `Application ID URI`, select **Set**. This generates an API in the form of: `api://{AppID}`. Update it to add your subdomain; for example, `api://myapp.ngrok.io/{appID}`.

1. On the same page, select **Add a scope**. Fill in the fields as follows, and select **Add scope**:

    - Scope name: `access_as_user`
    - Who can consent?: **Admins and users**
    - Admin consent display name: `Teams can access the user’s profile`
    - Admin consent description: `Allows Teams to call the app’s web APIs as the current user`
    - User consent display name: `Teams can access the user profile and make requests on the user's behalf`
    - User consent description: `Enable Teams to call this app’s APIs with the same rights as the user.`
    - State: **Enabled**

    Your API URL should look like this: `api://myapp.ngrok.io/{appID}/access_as_user`.

1. Next, add two client applications. This is for the Teams desktop/mobile clients and the web client. Under the **Authorized client applications** section, select **Add a client application**. Fill in the Client ID and select the scope you created. Then select **Add application**. Do this for the followings IDs:

    - 5e3ce6c0-2b1f-4285-8d4b-75ee78787346
    - 1fec8e78-bce4-4aaf-ab1b-5451cc387264

## Create the backend

The backend can be any backend that enables exchanging the Microsoft Teams authentication token with a token that can be used to call Microsoft Graph via the [on-behalf-of flow](/azure/active-directory/develop/v2-oauth2-on-behalf-of-flow).

For reference, see the [Teams SSO Node Sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/main/samples/teams-sso-node).

The following is a reference implementation of a node express server:

```TypeScript
import dotenv from 'dotenv';
import express from 'express';
import path from 'path';
import * as msal from '@azure/msal-node';
import { NextFunction, Request, Response } from 'express';
import jwt, { JwtHeader, SigningKeyCallback } from 'jsonwebtoken';
import jwksClient from 'jwks-rsa';
import jwt_decode from 'jwt-decode';

// Load .env file
dotenv.config();

/**
 * Validates a JWT
 * @param {Request} req - The incoming request
 * @param {Response} res - The outgoing response
 * @returns {Promise<string | null>} - Returns the token if valid, returns null if invalid
 */
function validateJwt(req: Request, res: Response, next: NextFunction): void {
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
async function getAccessTokenOnBehalfOf(req: Request, res: Response): Promise<void> {
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

////////////////////////
// create and run server
////////////////////////

const app = express();
const PORT = process.env.port || process.env.PORT || 8000;

// Support JSON payloads
app.use(express.json());
app.use(express.static(path.join(__dirname, 'client')));

// An example for using POST and with token validation using middleware
app.post('/api/token', validateJwt, async (req, res) => {
  await getAccessTokenOnBehalfOf(req, res);
});

app.listen(PORT, () => {
  console.log(`⚡️[server]: Server is running at http://localhost:${PORT}`);
});
```

## Initialize the Teams MSAL2 provider

The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph. To learn more, see [Using the providers](../providers/providers.md). The [Teams MSAL2 provider](../providers/teams-msal2.md) handles all the logic and interactions that need to be implemented with the Teams SDK to authenticate the user.

For SSO-mode, make sure to provide `sso-url` / `ssoUrl` and have it point to your backend API.

# [HTML](#tab/HTML)

Add the `mgt-teams-msal2-provider` in your HTML.

```HTML
<mgt-teams-msal2-provider
  client-id="<YOUR_CLIENT_ID>"
  auth-popup-url="/tabauth"
  scopes="User.Read,Mail.ReadBasic"
  sso-url="http://localhost:8000/api/token"
  http-method="POST"
  ></mgt-teams-msal2-provider>
```

Replace `<YOUR_CLIENT_ID>` with the client ID for your application, replace the `auth-popup-url` with the full or relative path to your auth page, and replace `sso-url` with the full or relative path to your backend service.

# [JavaScript](#tab/JavaScript)

To initialize the provider in your JavaScript code, import `TeamsMsal2Provider` and set the `globalProvider`.

```TypeScript
import {Providers} from '@microsoft/mgt-element';
import {TeamsMsal2Provider, HttpMethod} from '@microsoft/mgt-teams-msal2-provider';
import * as MicrosoftTeams from "@microsoft/teams-js";

TeamsMsal2Provider.microsoftTeamsLib = MicrosoftTeams;

Providers.globalProvider = new TeamsMsal2Provider({
  clientId: `<YOUR_CLIENT_ID>`,
  authPopupUrl: '/tabauth',
  scopes: ['User.Read','Mail.ReadBasic'],
  ssoUrl: 'http://localhost:8000/api/token',
  httpMethod: HttpMethod.POST
});
```
Replace `<YOUR_CLIENT_ID>` with the client ID for your application, replace the `authPopupUrl` with the full or relative path to your auth page, and replace `ssoUrl` with the full or relative path to your backend service.

---

## Add components

Now, you're ready to add any of the Microsoft Graph Toolkit components.

You can add components to your HTML as you normally would. For example, to add the `Person` component, add the following code to your HTML.

```HTML
<mgt-person person-query="me"></mgt-person>
```

If you're using React, we recommend using the React components instead from the `mgt-react` library. To learn more, see [Using Microsoft Graph Toolkit with React](./use-toolkit-with-react.md).

## Test the sample
For the full implementation, see the [Teams SSO Node Sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/main/samples/teams-sso-node).

If everything has been configured correctly, you will see the `Person` component rendered without the need to log in.
>[!IMPORTANT]
>If you haven't pre-consented, you might have to consent via a prompt.

## Next Steps
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Microsoft Q&A](/answers/topics/microsoft-graph-toolkit.html).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt).
