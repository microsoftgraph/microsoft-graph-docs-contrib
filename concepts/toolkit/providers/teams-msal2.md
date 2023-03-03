---
title: "Microsoft Teams MSAL2 provider"
description: "Use the Teams MSAL2 provider inside your Microsoft Teams tab to facilitate authentication and Microsoft Graph access to all components. The provider can be used for single-sign-on (SSO) or interactive sign in."
ms.localizationpriority: medium
author: sebastienlevert
---

# Microsoft Teams MSAL2 provider

Use the Microsoft Teams MSAL2 provider inside your Microsoft Teams tab to facilitate authentication and Microsoft Graph access to all components. The provider can be used for single sign-on (SSO) or interactive sign in.

To learn more, see [providers](./providers.md).

>**Tip:** For details about how to create a Microsoft Teams application with the Teams MSAL2 provider, see [Build a Microsoft Teams tab](../get-started/build-a-microsoft-teams-tab.md) and [Build a Microsoft Teams tab with SSO](../get-started/build-a-microsoft-teams-sso-tab.md).


### Difference between Teams Provider and Teams MSAL2 Provider
Unlike the Teams provider, the Teams MSAL2 provider supports single sign-on (SSO) and is built on [msal-browser](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-browser) for client-side authentication. [msal-browser](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-browser) implements the OAuth 2.0 [Authorization Code Flow](/azure/active-directory/develop/v2-oauth2-auth-code-flow) with PKCE. Because Authorization Code Flow is deemed more secure than Implicit Grant Flow for web applications, we recommend using Teams MSAL2 Provider over the Teams Provider. For details about security issues related to implicit grant flow, see [Disadvantages of the implicit flow](https://tools.ietf.org/html/draft-ietf-oauth-browser-based-apps-04#section-9.8.6).

All new applications should use Teams MSAL2 provider whenever possible.

## Get started

The provider can be used in interactive client side auth mode or SSO mode.

### Client-side authentication
In client-side authentication (or interactive authentication), the user will be asked to authenticate when they first launch the app. The user will need to use a sign in button to initiate the authentication flow. This can be done on the client and does not require a backend service.

### SSO authentication
To avoid asking the user to authenticate to the app, [Microsoft Teams tabs can also use SSO](/microsoftteams/platform/tabs/how-to/authentication/tab-sso-overview) to automatically authenticate users. However, this process requires a backend service that is used to exchange the Microsoft Teams-provided token with an access token that can be used to access Microsoft Graph.

Teams MSAL2 provider supports SSO mode, which is enabled when `ssoUrl` \ `sso-url` are set to a backend service that is capable of exchanging the tokens. The backend service is required to expose an API (such as `api/token`) that will receive an authentication token from Microsoft Teams and use the `on-behalf-of` flow to exchange the token for an access token that can access Microsoft Graph. For a reference implementation of a node backend service, see the [Microsoft Teams Node SSO sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/master/samples/teams-tab).

### Initialize the provider
Before using the Teams MSAL2 provider, make sure to reference the [Microsoft Teams SDK](/javascript/api/overview/msteams-client?view=msteams-client-js-latest&preserve-view=true#using-the-sdk) in your page.

Initialize the Teams MSAL2 provider in your main code.

# [npm](#tab/ts)
When initializing the Teams MSAL2 provider in JavaScript, make sure to install both the toolkit and the Microsoft Teams SDK.

```cmd
npm install @microsoft/teams-js @microsoft/mgt-element @microsoft/mgt-teams-msal2-provider
```

Next, import and use the provider.

```ts
import {Providers} from '@microsoft/mgt-element';
import {TeamsMsal2Provider} from '@microsoft/mgt-teams-msal2-provider';
import * as MicrosoftTeams from "@microsoft/teams-js";

TeamsMsal2Provider.microsoftTeamsLib = MicrosoftTeams;

Providers.globalProvider = new TeamsMsal2Provider(config);
```

where `config` is

```ts
export interface TeamsMsal2Config {
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
<script src="https://unpkg.com/@microsoft/teams-js@2/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt@2/dist/bundle/mgt-loader.js"></script>

<mgt-teams-msal2-provider
  client-id="<YOUR_CLIENT_ID>"
  auth-popup-url="/AUTH-PATH"
  scopes="user.read,people.read..."
  authority=""
  sso-url="/api/token"
  http-method="POST">
></mgt-teams-msal2-provider>
```

| Attribute | Description |
| --- | --- |
| client-id   | String client ID (see [Configure your Teams app](#configure-your-teams-app). Required. |
| auth-popup-url  | Absolute or relative path to the page that will handle auth in the popup (see [Create the popup page](#create-the-popup-page)). Required. |
| scopes  | Comma separated strings for scopes the user must consent to on sign in. Optional. |
| authority    | Authority string. The default is the common authority. For single-tenant apps, use your tenant ID or tenant name. For example, `https://login.microsoftonline.com/[your-tenant-name].onmicrosoft.com` or `https://login.microsoftonline.com/[your-tenant-id]`. Optional. |
| sso-url  | Absolute or relative path to the backend API that handles the OBO token exchange. Optional. |
| http-method  | Type of HTTP method to use for calling the backend API. `POST` or `GET`. Default is `GET`. Optional |

---
### Create the popup page

To sign in with your Teams credentials and handle consent, you need provide a URL that the Teams app will open in a popup, which will follow the authentication flow. Create a new page in your application (for example, `https://mydomain.com/auth`) that will handle the auth redirect and call the `TeamsMsal2Provider.handleAuth` method. That's the only thing that this page needs to do. For example:

# [npm](#tab/ts)

```ts
import * as MicrosoftTeams from "@microsoft/teams-js/dist/MicrosoftTeams";
import {TeamsMsal2Provider} from '@microsoft/mgt-teams-msal2-provider';

TeamsMsal2Provider.microsoftTeamsLib = MicrosoftTeams;
TeamsMsal2Provider.handleAuth();
```

# [unpkg](#tab/html)

```html
<script src="https://unpkg.com/@microsoft/teams-js@2/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt@2/dist/bundle/mgt-loader.js"></script>

<script>
  mgt.TeamsMsal2Provider.handleAuth();
</script>
```
---

## Configure your Teams app

If you're just getting started with Teams apps, see [Add tabs to Microsoft Teams apps](/microsoftteams/platform/concepts/tabs/tabs-overview). You can use the [Developer Portal for Teams](/microsoftteams/platform/concepts/build-and-test/teams-developer-portal) to configure, distribute, and manage your application. You can access the Developer Portal for Teams in a [web browser](https://dev.teams.microsoft.com/) or as a [Teams App](https://teams.microsoft.com/l/app/14072831-8a2a-4f76-9294-057bf0b42a68).

You can also use the [Teams Toolkit](https://marketplace.visualstudio.com/items?itemName=TeamsDevApp.ms-teams-vscode-extension) in **Visual Studio Code** to quickly create and deploy your Teams app.

### Creating an app/client ID

For details about how to register an app and get a client ID for interactive authentication, see [Create an Azure Active Directory app](../get-started/add-aad-app-registration.md).


For details about how to register an app and get a client ID and secret for SSO, see [Build a Microsoft Teams tab with Single Sign-On](../get-started/build-a-microsoft-teams-sso-tab.md).

## Migrating from Teams Provider to Teams MSAL2 Provider
To migrate an application that's using Teams Provider to the Teams MSAL2 Provider:
1. Go to the Azure portal at https://portal.azure.com.
1. From the menu, select **Azure Active Directory**.
1. From the Azure Active Directory menu, select **App registrations**.
1. Select the app registration of the app that you're currently using.
1. On the left menu, go to **Authentication**.
1. Under **Platform configurations**, choose **Add a platform** and select **Single-page Application**.
1. Remove all the redirect URIs that you have currently registered under **Web**, and instead add them under **Single-page application**.
1. In your code, replace TeamsProvider with Teams MSAL2 Provider.

    If you are initializing your provider in the JS/TS code, follow these steps:

    Replace the import statement for ```mgt-teams-provider``` with
    ```ts
    import {TeamsMsal2Provider} from '@microsoft/mgt-teams-msal2-provider';
    ```
    Replace the initialization of MsalProvider with
    ```ts
    Providers.globalProvider = new TeamsMsal2Provider(config);
    ```
    If you are initializing the provider in HTML, replace
    ```html
    <mgt-teams-provider client-id="<YOUR_CLIENT_ID>" auth-popup-url="/AUTH-PATH" ... ></mgt-teams-provider>
    ```
    with
    ```html
    <mgt-teams-msal2-provider client-id="<YOUR_CLIENT_ID>" auth-popup-url="/AUTH-PATH" ... ></mgt-teams-msal2-provider>
    ```

## See also
* [Microsoft Teams Node SSO sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/master/samples/teams-tab)
* [Build a Microsoft Teams tab](../get-started/build-a-microsoft-teams-tab.md)
* [Build a Microsoft Teams tab with SSO](../get-started/build-a-microsoft-teams-sso-tab.md)
