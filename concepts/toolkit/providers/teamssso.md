---
title: "Teams SSO provider"
description: "Use the Teams SSO provider inside your Microsoft Teams tab to facilitate authentication and Microsoft Graph access to all components. The provider can be used for single-sign-on (SSO) or interactive login"
localization_priority: Normal
author: simonagren
---

# Teams SSO provider

Use the Teams SSO provider inside your Microsoft Teams tab to facilitate authentication and Microsoft Graph access to all components. The provider can be used for single-sign-on (SSO) or interactive login
To learn more, see [providers](./providers.md).

>**Tip:** For details about how to get started with creating a Microsoft Teams application with the Teams SSO Provider, see the [Build a Microsoft Teams SSO tab](../get-started/build-a-microsoft-teams-sso-tab.md) getting started guide.


## Get started

Before using the Teams SSO provider, you will need to make sure you have referenced the [Microsoft Teams SDK](/javascript/api/overview/msteams-client?view=msteams-client-js-latest&preserve-view=true#using-the-sdk) in your page.

### Initialize the provider
Initialize the Teams SSO provider in your main code. The provider can be used in interactive "client side auth" mode or SSO mode. SSO mode is enabled by setting `ssoUrl` \ `sso-url` and requires a backend service to handle the on-behalf-of flow.

# [npm](#tab/ts)
When initializing the Teams SSO provider in JavaScript, make sure to install both the toolkit and the Microsoft Teams SDK.

```cmd
npm install @microsoft/teams-js @microsoft/mgt-element @microsoft/mgt-teams-sso-provider
```

Next, import and use the provider.

```ts
import {Providers} from '@microsoft/mgt-element';
import {TeamsSSOProvider} from '@microsoft/mgt-teams-sso-provider';
import * as MicrosoftTeams from "@microsoft/teams-js/dist/MicrosoftTeams";

TeamsProvider.microsoftTeamsLib = MicrosoftTeams;

Providers.globalProvider = new TeamsSSOProvider(config);
```

where `config` is

```ts
export interface TeamsSSOConfig {
  clientId: string;
  authPopupUrl: string; // see below for creating the popup page
  scopes?: string[];
  msalOptions?: Configuration;
  ssoUrl?: string; // ex: '/api/token',
  autoConsent?: boolean,
  httpMethod: HttpMethod; //ex HttpMethod.POST
}
```

# [unpkg](#tab/html)

```html
<!-- Microsoft Teams sdk must be referenced before the toolkit -->
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>

<mgt-teams-sso-provider 
  client-id="<YOUR_CLIENT_ID>"
  auth-popup-url="/AUTH-PATH"
  scopes="user.read,people.read..." 
  authority=""
  sso-url="/api/token" 
  http-method="POST">
></mgt-teams-provider>
```

### mgt-teams-sso-provider attributes
| Attribute | Description |
| --- | --- |
| client-id   | String client ID (see [Configure your Teams app](#configure-your-teams-app). Required. |
| auth-popup-url  | Absolute or relative path to the page that will handle auth in the popup (see [Create the popup page](#create-the-popup-page)). Required. |
| scopes  | Comma separated strings for scopes the user must consent to on sign in. Optional. |
| authority    | Authority string. The default is the common authority. For single-tenant apps, use your tenant ID or tenant name. For example, `https://login.microsoftonline.com/[your-tenant-name].onmicrosoft.com` or `https://login.microsoftonline.com/[your-tenant-id]`. Optional. |
| sso-url  | Absolute or relative path to the backend API that handles the OBO token exchange. Optional. |
| http-method  | Type of HTTP Method to use for calling the backend API. `POST` or `GET`. Default is `GET`. Optional |
---

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

You could also initialize the Teams SSO provider in HTML. Use the `mgt-teams-sso-provider` component to set the properties. **client-id** and **auth-popup-url** are required.

```html
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>

<script>
  mgt.TeamsSSOProvider.handleAuth();
</script>
```
---

## Configure your Teams app

If you're just getting started with Teams apps, see [Add tabs to Microsoft Teams apps](/microsoftteams/platform/concepts/tabs/tabs-overview). You can also use [App Studio](/microsoftteams/platform/get-started/get-started-app-studio) to quickly develop your app manifest.

### Creating an app/client ID

For details about how to register an app and get a client ID, see [Create an Azure Active Directory app](../get-started/add-aad-app-registration.md).


### Difference between Teams Provider and Teams SSO Provider
Teams Provider makes use of MSAL Provider, while TeamsSSOProvider makes use of the newer MSAL2Provider. Msal2Provider is built on top of [msal-browser](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-browser), which implements the OAuth 2.0 [Authorization Code Flow](/azure/active-directory/develop/v2-oauth2-auth-code-flow) with PKCE. Authorization Code Flow is deemed more secure than Implicit Grant Flow for web applications, so we recommend usage of TeamsSSOProvider over TeamsProvider. For details about security issues related to implicit grant flow, see [Disadvantages of the implicit flow](https://tools.ietf.org/html/draft-ietf-oauth-browser-based-apps-04#section-9.8.6).

## Migrating from TeamsProvider to TeamsSSOProvider
To migrate an application that's using Teams Provider to the Teams SSO Provider:
1. Go to the Azure portal at https://portal.azure.com.
1. From the menu, select **Azure Active Directory**.
1. From the Azure Active Directory menu, select **App registrations**.
1. Select the app registration of the app that you're currently using. 
1. Go to **Authentication** on the left menu.
1. Under **Platform configurations**, click on **Add a platform** and select **Single-page Application**.
1. Remove all the redirect URIs that you have currently registered under **Web**, and instead add them under **Single-page application**.
1. In your code, replace TeamsProvider with TeamsSSOProvider.

    If you are initializing your provider in the JS/TS code, follow these steps:
    
    Replace the import statement for ```mgt-teams-provider``` with 
    ```ts 
    import {TeamsSSOProvider} from '@microsoft/mgt-teams-sso-provider';
    ```
    Replace the initialization of MsalProvider with
    ```ts
    Providers.globalProvider = new TeamsSSOProvider(config);
    ```
    If you are initializing the provider in HTML, replace 
    ```html
    <mgt-teams-provider client-id="<YOUR_CLIENT_ID>" auth-popup-url="/AUTH-PATH" ... ></mgt-teams-provider>
    ``` 
    with 
    ```html
    <mgt-teams-sso-provider client-id="<YOUR_CLIENT_ID>" auth-popup-url="/AUTH-PATH" ... ></mgt-teams-sso-provider>
    ```
    For details, see [Initialize in your HTML page](#initialize-in-your-html-page).

## See also
* [Microsoft Teams Node SSO sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/master/samples/teams-tab)
* [Build a Microsoft Teams tab](../get-started/build-a-microsoft-teams-tab.md)