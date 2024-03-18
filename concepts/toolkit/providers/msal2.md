---
title: "MSAL2 provider"
description: "The MSAL 2 provider uses MSAL-browser to sign in users and acquire tokens to use with the Microsoft Graph"
ms.localizationpriority: medium
author: sebastienlevert
---

# MSAL2 Provider

The MSAL2 Provider uses [MSAL-browser](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-browser) to sign in users and acquire tokens to use with Microsoft Graph.

To learn more, see [providers](./providers.md).

## Difference between MSAL2 Provider and MSAL Provider
Although the usage is similar, MSAL Provider and MSAL2 Provider are built on different OAuth flows. MSAL Provider is built on msal.js, which implements the OAuth2.0 [Implicit Grant Flow](/azure/active-directory/develop/v2-oauth2-implicit-grant-flow). MSAL2 Provider is built on [MSAL-browser](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-browser), which implements the OAuth 2.0 [Authorization Code Flow](/azure/active-directory/develop/v2-oauth2-auth-code-flow) with PKCE.
Because Authorization Code Flow is deemed more secure than Implicit Grant Flow for web applications, we recommend using Msal2Provider over MsalProvider. For details about security issues related to implicit grant flow, see [Disadvantages of the implicit flow](https://tools.ietf.org/html/draft-ietf-oauth-browser-based-apps-04#section-9.8.6).

All new applications should use MSAL2 Provider whenever possible.

## Get started

You can initialize the MSAL2 Provider in HTML or JavaScript.

### Initialize in your HTML page

Initializing the MSAL2 provider in HTML is the simplest way to create a new provider. Use the `mgt-msal2-provider` component to set the **client-id** and other properties. This creates a new `PublicClientApplication` instance that is used for all authentication and acquiring tokens.

```html
    <mgt-msal2-provider client-id="<YOUR_CLIENT_ID>"
                        login-type="redirect/popup"
                        scopes="user.read,people.read"
                        redirect-uri="https://my.redirect/uri"
                        authority="">
    </mgt-msal2-provider>
```

| Attribute                    | Description                                                                                                                                                                                                                                                           |
|------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| client-id                    | String client ID (see Creating an app/client ID). Required.                                                                                                                                                                                                           |
| login-type                   | Enumeration between `redirect` and `popup` - default value is `redirect`. Optional.                                                                                                                                                                                   |
| scopes                       | Comma-separated strings for scopes that the user must consent to when they sign in. Optional.
| custom-hosts                 | Comma-separated strings for additional domains that the Microsoft Graph client can call. Optional.                                                                                                                                                                                     |
| authority                    | Authority string - default is the common authority. For single-tenant apps, use your tenant ID or tenant name. For example, `https://login.microsoftonline.com/[your-tenant-contoso.com` or `https://login.microsoftonline.com/[your-tenant-id]`. Optional. |
| redirect-uri                 | Redirect URI string - by default the current window URI is used. Optional.                                                                                                                                                                                            |
| prompt                       | Type of prompt to use for login, between ```SELECT_ACCOUNT```, ```CONSENT``` and ```LOGIN```. Default is ```SELECT_ACCOUNT```. Optional.
| base-url                     | The Microsoft Graph endpoint to be used for Microsoft Graph calls. It can be any of the supported [National cloud deployments](/graph/deployments). The default value is `https://graph.microsoft.com`.
| incremental-consent-disabled | Specifies if incremental consent is disabled. Default `false`. Optional. |

### Initialize in JavaScript

You can provide more options by initializing the provider in JavaScript.

```ts
    import {Providers} from '@microsoft/mgt-element';
    import {Msal2Provider, Msal2Config, Msal2PublicClientApplicationConfig} from '@microsoft/mgt-msal2-provider';

    // initialize the auth provider globally
    Providers.globalProvider = new Msal2Provider(config: Msal2Config | Msal2PublicClientApplicationConfig);
```

You can configure the `Msal2Provider` constructor parameter in two ways, as described in the following sections.

#### Provide a `clientId` to create a new `PublicClientApplication`

This option makes sense when the Microsoft Graph Toolkit is responsible for all authentication in your application.

```ts
interface Msal2Config {
  clientId: string;
  scopes?: string[];
  customHosts?: string[];
  authority?: string;
  redirectUri?: string;
  loginType?: LoginType; // LoginType.Popup or LoginType.Redirect (redirect is default)
  prompt?: PromptType; // PromptType.CONSENT, PromptType.LOGIN or PromptType.SELECT_ACCOUNT
  sid?: string; // Session ID
  loginHint?: string;
  domainHint?: string;
  isIncrementalConsentDisabled?: boolean, //Disable incremental consent, true by default
  options?: Configuration // msal-browser Configuration object
}
```

#### Pass an existing `PublicClientApplication` in the `publicClientApplication` property.

Use this when your app uses MSAL functionality beyond what's exposed by the `Msal2Provider` and other Microsoft Graph Toolkit features. This is appropriate if a framework automatically instantiates and exposes a `PublicClientApplication` for you; for example, when using [MSAL-angular](/azure/active-directory/develop/tutorial-v2-angular). For more information, see the `angular-app` sample in the Microsoft Graph Toolkit [repo](https://github.com/microsoftgraph/microsoft-graph-toolkit).

Be sure to understand opportunities for collisions when using this option. By its very nature, there is a risk that the `Msal2Provider` can change the state of a session; for example, by having the user sign in or consent to additional scopes. Make sure that your app and other frameworks respond gracefully to these changes in state, or consider using a [custom provider](./custom.md) instead.

```ts
interface Msal2PublicClientApplicationConfig {
  publicClientApplication: PublicClientApplication;
  scopes?: string[];
  customHosts?: string[];
  authority?: string;
  redirectUri?: string;
  loginType?: LoginType; // LoginType.Popup or LoginType.Redirect (redirect is default)
  prompt?: PromptType; // PromptType.CONSENT, PromptType.LOGIN or PromptType.SELECT_ACCOUNT
  sid?: string; // Session ID
  loginHint?: string;
  domainHint?: string;
  isIncrementalConsentDisabled?: boolean, //Disable incremental consent, true by default
  options?: Configuration // msal-browser Configuration object
}
```

#### Use a different cloud endpoint

Use this when you want to use the toolkit to render your data from a different Microsoft 365 endpoint.

```ts
import {Providers, Msal2Provider} from '@microsoft/mgt'

const config: Msal2Config = {
  baseUrl: 'https://graph.microsoft.us', // change the base URL
  clientId: '2dfea037-xxx-c05708a1b241',
  ... // rest of the config
}

Providers.globalProvider = new Msal2Provider(config);
```

Alternatively:

```html
<mgt-msal2-provider
      client-id="2dfea037-xxx-c05708a1b241"
      redirect-uri="http://localhost:3000"
      base-url="https://dod-graph.microsoft.us"
      scopes="user.read,user.read.all">
</mgt-msal2-provider>
```

To call the custom APIs, request that API scope.

```HTML
<mgt-get resource="https://myapi.com/v1.0/api" scopes="api://CUSTOM_API_GUID/SCOPE">
  ...
</mgt-get>
```
or via Javascript/Typescript
```ts
import { prepScopes } from "@microsoft/mgt-element";

graphClient
  .api("https://myapi.com/v1.0/api")
  .middlewareOptions(prepScopes("api://CUSTOM_API_GUID/SCOPE"))
  .get();
...
```

<a name='use-custom-hosts-to-call-different-azure-ad-secured-endpoints'></a>

#### Use custom hosts to call different Microsoft Entra ID-secured endpoints

If you want to call your own custom Microsoft Entra ID secured endpoints, pass those domains to the underlying Microsoft Graph client.

```ts
import {Providers, Msal2Provider} from '@microsoft/mgt'

const config: Msal2Config = {
  clientId: '2dfea037-xxx-c05708a1b241',
  customHosts: ['mydomain.com'] //array of domains, not urls!
  ... // rest of the config
}

Providers.globalProvider = new Msal2Provider(config);
```

Alternatively:

```html
<mgt-msal2-provider
      client-id="2dfea037-xxx-c05708a1b241"
      redirect-uri="http://localhost:3000"
      custom-hosts="mydomain.com"
      scopes="user.read,user.read.all">
</mgt-msal2-provider>
```


## Creating an app/client ID

For details about how to register an app and get a client ID, see [Create a Microsoft Entra app](../get-started/add-aad-app-registration.md).

## Migrating from MSAL Provider to MSAL2 Provider
To migrate an application that's using MSAL provider to the MSAL2 Provider:
1. Go to the [Microsoft Entra admin center](https://entra.microsoft.com).
1. Expand the **Identity** menu > expand **Applications** > select **App registrations**.
1. Select the app registration of the app to migrate.
1. Go to **Authentication** on the left menu.
1. Under **Platform configurations**, select on **Add a platform** and select **Single-page Application**.
1. Remove all the redirect URIs that you have currently registered under **Web**, and instead add them under **Single-page application**.
1. In your code, replace `MSALProvider` with `MSAL2Provider`.

    If you are initializing your provider in the JS/TS code, follow these steps:

    Replace the import statement for ```mgt-MSAL-provider``` with
    ```ts
    import {Msal2Provider, PromptType} from '@microsoft/mgt-msal2-provider';
    ```

    Replace the initialization of MsalProvider with
    ```ts
    Providers.globalProvider = new Msal2Provider({
      clientId: 'REPLACE_WITH_CLIENTID'
      ...
    })
    ```
    If you are initializing the provider in HTML, replace
    ```html
    <mgt-msal-provider client-id="" ... ></mgt-msal-provider>
    ```
    with
    ```html
    <mgt-msal2-provider  client-id="" ... ></mgt-msal2-provider>
     ```
    For details, see [Initialize in your HTML page](#initialize-in-your-html-page).
