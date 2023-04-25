---
title: "MSAL Provider"
description: "The MSAL provider uses MSAL.js to sign in users and acquire tokens to use with the Microsoft Graph."
ms.localizationpriority: medium
author: sebastienlevert
---

# MSAL Provider

The MSAL Provider uses [msal.js](https://github.com/AzureAD/microsoft-authentication-library-for-js) to sign in users and acquire tokens to use with Microsoft Graph.

To learn more, see [providers](./providers.md).

## Difference between MSAL2 Provider and MSAL Provider
Although the usage is similar, MSAL Provider and MSAL2 Provider are built on different OAuth flows. MSAL Provider is built on msal.js, which implements the OAuth2.0 [Implicit Grant Flow](/azure/active-directory/develop/v2-oauth2-implicit-grant-flow). MSAL2 Provider is built on [msal-browser](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-browser), which implements the OAuth 2.0 [Authorization Code Flow](/azure/active-directory/develop/v2-oauth2-auth-code-flow) with PKCE.
Because Authorization Code Flow is deemed more secure than Implicit Grant Flow for web applications, we recommend using MSAL2 Provider over MSAL Provider. For details about security issues related to implicit grant flow, see [Disadvantages of the implicit flow](https://tools.ietf.org/html/draft-ietf-oauth-browser-based-apps-04#section-9.8.6).

All new applications should use MSAL2 Provider whenever possible. For migration information, see [MSAL2 Provider](./msal2.md).

## Get started

You can initialize the MSAL provider in HTML or JavaScript.

### Initialize in your HTML page

Initializing the MSAL provider in HTML is the simplest way to create a new provider. Use the `mgt-msal-provider` component to set the **client-id** and other properties. This will create a new `UserAgentApplication` instance that will be used for all authentication and acquiring tokens.

```html
<mgt-msal-provider client-id="<YOUR_CLIENT_ID>"
                   login-type="redirect/popup"
                   scopes="user.read,people.read"
                   redirect-uri="https://my.redirect/uri"
                   authority=""
                   domainHint="mydomain.com"
                   prompt="consent"></mgt-msal-provider>
```

| Attribute    | Description                                                                                                                                                                                                                                                           |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| client-id    | String client ID (see Creating an app/client ID). Required.                                                                                                                                                                                                           |
| login-type   | Enumeration between `redirect` and `popup` - default value is `redirect`. Optional.                                                                                                                                                                                   |
| scopes       | Comma separated strings for scopes the user must consent to on sign in. Optional.                                                                                                                                                                                     |
| authority    | Authority string - default is the common authority. For single-tenant apps, use your tenant ID or tenant name. For example, `https://login.microsoftonline.com/[your-tenant-name].onmicrosoft.com` or `https://login.microsoftonline.com/[your-tenant-id]`. Optional. |
| redirect-uri | Redirect URI string - by default the current window URI is used. Optional.                                                                                                                                                                                            |
| depends-on   | Element selector string of another higher priority provider component. Optional. 
| domain-hint  | Query string of domain location for forwarding sign in experience. Optional.              
| prompt | Selection for type of user interaction required to sign in. Valid options include: <ul><li>`login` forces the user to enter credentials on request </li><li>`none` for no interactive prompt</li> <li>`select_account` to send the user to an account picker</li><li>`consent` to send the user to a OAuth consent dialog box</li></ul> For more prompt information, see the [prompt behavior in MSAL.js](/azure/active-directory/develop/msal-js-prompt-behavior) article. Optional.
| base-url | The Microsoft Graph endpoint to be used for Microsoft Graph calls. It can be any of the supported [National cloud deployments](/graph/deployments). The default value is `https://graph.microsoft.com`.    


### Initialize in JavaScript

You can provide more options by initializing the provider in JavaScript.

```ts
import {Providers, MsalProvider} from '@microsoft/mgt'
import {UserAgentApplication} from "msal";

Providers.globalProvider = new MsalProvider(config: MsalConfig);
```

You can configure the `MsalProvider` constructor parameter in two ways, as described in the following sections.

#### Provide a `clientId` to create a new `UserAgentApplication`

This option makes sense when Graph Toolkit is responsible for all authentication in your application.

```ts
interface MsalConfig {
  clientId: string;
  scopes?: string[];
  authority?: string;
  redirectUri?: string;
  loginType?: LoginType; // LoginType.Popup or LoginType.Redirect (redirect is default)
  loginHint?: string
  options?: Configuration; // msal js Configuration object
  domainHint?: string;
  prompt?: string; // "login", "none", "select_account", "consent"
}
```

#### Pass an existing `UserAgentApplication` in the `userAgentApplication` property.

Use this when your app uses MSAL functionality beyond what's exposed by the `MsalProvider` and other Microsoft Graph Toolkit features. This is particularly appropriate if a framework automatically instantiates and exposes a `UserAgentApplication` for you; for example, when using [msal-angular](/azure/active-directory/develop/tutorial-v2-angular).

Be sure to understand opportunities for collisions when using this option. By its very nature, there is a risk that the `MsalProvider` can change the state of a session, for example by having the user sign in or consent to additional scopes. Make sure that your app and other frameworks respond gracefully to these changes in state, or consider using a [custom provider](./custom.md) instead.

```ts
interface MsalConfig {
  userAgentApplication: UserAgentApplication;
  scopes?: string[];
  loginType?: LoginType; // LoginType.Popup or LoginType.Redirect (redirect is default)
  loginHint?: string;
}
```

To learn more about MSAL.js and for additional options you can use when initializing the MSAL library, see the [MSAL documentation](/azure/active-directory/develop/msal-js-initializing-client-applications).

#### Use a different cloud endpoint

Use this when you want to use the toolkit to render your data from a different Microsoft 365 endpoint.

```ts
import {Providers, MsalProvider} from '@microsoft/mgt'

const config: MsalConfig = {
  baseUrl: 'https://graph.microsoft.us', // change the base URL
  clientId: '2dfea037-xxx-c05708a1b241',
  ... // rest of the config
}

Providers.globalProvider = new MsalProvider(config);
```

Alternatively:

```html
<mgt-msal-provider
      client-id="2dfea037-xxx-c05708a1b241"
      redirect-uri="http://localhost:3000"
      base-url="https://dod-graph.microsoft.us"
      scopes="user.read,user.read.all">
</mgt-msal-provider>
```

Then use the toolkit as usual.

## Creating an app/client ID

For details about how to register an app and get a client ID, see [Create an Azure Active Directory app](../get-started/add-aad-app-registration.md).
