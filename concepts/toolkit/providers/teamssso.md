---
title: "Teams SSO provider"
description: "Use the Teams SSO provider inside your Microsoft Teams tab to facilitate authentication and Microsoft Graph access to all components"
localization_priority: Normal
author: simonagren
---

# Teams SSO provider

Use the Teams provider inside your Microsoft Teams tab to facilitate authentication and Microsoft Graph access to all components.
To learn more, see [providers](./providers.md).

>**Tip:** For details about how to get started with creating a Microsoft Teams application with the Teams SSO Provider, see the [Build a Microsoft Teams SSO tab](../get-started/build-a-microsoft-teams-sso-tab.md) getting started guide.


## Get started

Before using the Teams SSO provider, you will need to make sure you have referenced the [Microsoft Teams SDK](/javascript/api/overview/msteams-client?view=msteams-client-js-latest&preserve-view=true#using-the-sdk) in your page.

# [npm](#tab/ts)

Make sure to install both the toolkit and the Microsoft Teams SDK.

```bash
npm install @microsoft/teams-js @microsoft/mgt-element @microsoft/mgt-teams-sso-provider
```

### Create the popup page

In order to sign in with your Teams credentials and handle consent, you need provide a URL that the Teams app will open in a popup, which will follow the authentication flow. Create a new page in your application (ex: https://mydomain.com/auth) that will handle the auth redirect and call the `TeamsSSOProvider.handleAuth` method. That's the only thing that this page needs to do. For example:

# [npm](#tab/ts)

```ts
import * as MicrosoftTeams from "@microsoft/teams-js/dist/MicrosoftTeams";
import {TeamsSSOProvider} from '@microsoft/mgt-teams-sso-provider';

TeamsSSOProvider.microsoftTeamsLib = MicrosoftTeams;
TeamsSSOProvider.handleAuth();
```

# [unpkg](#tab/html)

```html
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>

<script>
  mgt.TeamsProvider.handleAuth();
</script>
```
---



You can initialize the MSAL 2.0 provider in HTML or JavaScript.

### Initialize in your HTML page

Initializing the MSAL 2 provider in HTML is the simplest way to create a new provider. Use the `mgt-msal2-provider` component to set the **client-id** and other properties. This will create a new `PublicClientApplication` instance that will be used for all authentication and acquiring tokens.

```html
    <mgt-msal2-provider client-id="<YOUR_CLIENT_ID>"
                        login-type="redirect/popup" 
                        scopes="user.read,people.read" 
                        redirect-uri="https://my.redirect/uri" 
                        authority=""> 
    </mgt-msal2-provider> 
```

| Attribute    | Description                                                                                                                                                                                                                                                           |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| client-id    | String client ID (see Creating an app/client ID). Required.                                                                                                                                                                                                           |
| login-type   | Enumeration between `redirect` and `popup` - default value is `redirect`. Optional.                                                                                                                                                                                   |
| scopes       | Comma separated strings for scopes the user must consent to on sign in. Optional.                                                                                                                                                                                     |
| authority    | Authority string - default is the common authority. For single-tenant apps, use your tenant ID or tenant name. For example, `https://login.microsoftonline.com/[your-tenant-name].onmicrosoft.com` or `https://login.microsoftonline.com/[your-tenant-id]`. Optional. |
| redirect-uri | Redirect URI string - by default the current window URI is used. Optional.                                                                                                                                                                                            |
| prompt       | Type of prompt to use for login, between ```SELECT_ACCOUNT```, ```CONSENT``` and ```LOGIN```. Default is ```SELECT_ACCOUNT```. Optional.

### Initialize in JavaScript

You can provide more options by initializing the provider in JavaScript.

```ts
    import {Providers, LoginType} from '@microsoft/mgt-element';
    import {Msal2Provider, PromptType} from '@microsoft/mgt-msal2-provider';

    // initialize the auth provider globally
    Providers.globalProvider = new Msal2Provider({
      clientId: 'REPLACE_WITH_CLIENTID',
      scopes?: string[],
      authority?: string,
      redirectUri?: string,
      loginType?: LoginType, // LoginType.Popup or LoginType.Redirect (redirect is default)
      prompt?: PromptType, // PromptType.CONSENT, PromptType.LOGIN or PromptType.SELECT_ACCOUNT
      sid?: string, // Session ID
      loginHint?: string,
      domainHint?: string,
      options?: Configuration // msal js Configuration object
    });
```

## Creating an app/client ID

For details about how to register an app and get a client ID, see [Create an Azure Active Directory app](../get-started/add-aad-app-registration.md).

## Difference between Msal2Provider and MsalProvider
Although the usage is very similar, MsalProvider and Msal2Provider are built on top of different OAuth flows. MsalProvider is built on top of MSAL.js, which implements the OAuth2.0 [Implicit Grant Flow](/azure/active-directory/develop/v2-oauth2-implicit-grant-flow). Msal2Provider is built on top of [msal-browser](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-browser), which implements the OAuth 2.0 [Authorization Code Flow](/azure/active-directory/develop/v2-oauth2-auth-code-flow) with PKCE.
Authorization Code Flow is deemed more secure than Implicit Grant Flow for web applications, so we recommend usage of MSAL2Provider over MSALProvider. For details about security issues related to implicit grant flow, see [Disadvantages of the implicit flow](https://tools.ietf.org/html/draft-ietf-oauth-browser-based-apps-04#section-9.8.6).

## Migrating from MSAL Provider to MSAL 2 Provider
To migrate an application that's using MSAL provider to the MSAL 2 Provider:
1. Go to the Azure portal at https://portal.azure.com.
1. From the menu, select **Azure Active Directory**.
1. From the Azure Active Directory menu, select **App registrations**.
1. Select the app registration of the app that you're currently using. 
1. Go to **Authentication** on the left menu.
1. Under **Platform configurations**, click on **Add a platform** and select **Single-page Application**.
1. Remove all the redirect URIs that you have currently registered under **Web**, and instead add them under **Single-page application**.
1. In your code, replace MSALProvider with MSAL2Provider.

    If you are initializing your provider in the JS/TS code, follow these steps:
    
    Replace the import statement for ```mgt-msal-provider``` with 
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
