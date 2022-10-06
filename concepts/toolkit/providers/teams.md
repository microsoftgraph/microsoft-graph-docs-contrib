---
title: "Microsoft Teams provider"
description: "Use the Teams provider inside your Microsoft Teams tab to facilitate authentication and Microsoft Graph access to all components."
ms.localizationpriority: medium
author: sebastienlevert
---

# Microsoft Teams provider

Use the TeamsProvider inside your Microsoft Teams tab to facilitate authentication and Microsoft Graph access to all components.

To learn more about authentication providers, see [providers](./providers.md).

>**Tip:** For details about how to get started with creating a Microsoft Teams application with the Teams Provider, see the [Build a Microsoft Teams tab](../get-started/build-a-microsoft-teams-tab.md) getting started guide.

### Difference between Teams Provider and Teams MSAL2 Provider
Unlike TeamsProvider, the Teams MSAL2 Provider support Single Sign-On (SSO) and is built on top of [msal-browser](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-browser) for client side authentication. [msal-browser](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-browser) implements the OAuth 2.0 [Authorization Code Flow](/azure/active-directory/develop/v2-oauth2-auth-code-flow) with PKCE. Authorization Code Flow is deemed more secure than Implicit Grant Flow for web applications, so we recommend usage of Teams MSAL2 Provider over the Teams Provider. For details about security issues related to implicit grant flow, see [Disadvantages of the implicit flow](https://tools.ietf.org/html/draft-ietf-oauth-browser-based-apps-04#section-9.8.6).

All new applications should use the Teams MSAL2 Provider whenever possible. See [Teams MSAL2 Provider](./teams-msal2.md) for migration documentation.

## Get started

Before using the Teams provider, you will need to make sure you have referenced the [Microsoft Teams SDK](/javascript/api/overview/msteams-client?view=msteams-client-js-latest&preserve-view=true#using-the-sdk) in your page.

# [npm](#tab/ts)

Make sure to install both the toolkit and the Microsoft Teams SDK.

```cmd
npm install @microsoft/mgt @microsoft/teams-js
```

Next, import and use the provider.

```ts
import * as microsoftTeams from "@microsoft/teams-js";
import {Providers, TeamsProvider} from '@microsoft/mgt';

TeamsProvider.microsoftTeamsLib = microsoftTeams;
Providers.globalProvider = new TeamsProvider(config);
```

where `config` is

```ts
export interface TeamsConfig {
  clientId: string;
  authPopupUrl: string; // see below for creating the popup page
  scopes?: string[];
  msalOptions?: Configuration;
}
```

# [unpkg](#tab/html)

```html
<!-- Microsoft Teams sdk must be referenced before the toolkit -->
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>

<mgt-teams-provider
  client-id="<YOUR_CLIENT_ID>"
  auth-popup-url="/AUTH-PATH"
  scopes="User.Read,People.Read..."
  authority=""
></mgt-teams-provider>
```

### mgt-teams-provider attributes
| Attribute | Description |
| --- | --- |
| client-id   | String client ID (see [Configure your Teams app](#configure-your-teams-app). Required. |
| auth-popup-url  | Absolute or relative path to the page that will handle auth in the popup (see [Create the popup page](#create-the-popup-page)). Required. |
| scopes  | Comma separated strings for scopes the user must consent to on sign in. Optional. |
| depends-on | Element selector string of another higher-priority provider component. Optional. |
| authority    | Authority string. The default is the common authority. For single-tenant apps, use your tenant ID or tenant name. For example, `https://login.microsoftonline.com/[your-tenant-name].onmicrosoft.com` or `https://login.microsoftonline.com/[your-tenant-id]`. Optional. |

---

### Create the popup page

In order to sign in with your Teams credentials, you need to provide a URL that the Teams app will open in a popup, which will follow the authentication flow. This URL needs to be in your domain, and it needs to call the `TeamsProvider.handleAuth();` method. That's the only thing that this page needs to do. For example:

# [npm](#tab/ts)

```ts
import * as microsoftTeams from "@microsoft/teams-js";
import {Providers, TeamsProvider} from '@microsoft/mgt';

TeamsProvider.microsoftTeamsLib = microsoftTeams;
TeamsProvider.handleAuth();
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

### Configure redirect URIs

After you publish the popup page on your website, you need to use the URL in the `auth-popup-url/authPopupUrl` property. This URL also needs to be configured as a valid redirect URI in your app configuration in the Azure AD portal.

## Configure your Teams app

If you're just getting started with Teams apps, see [Add tabs to Microsoft Teams apps](/microsoftteams/platform/concepts/tabs/tabs-overview). You can use the [Developer Portal for Teams](/microsoftteams/platform/concepts/build-and-test/teams-developer-portal) to configure, distribute, and manage your application. You can access the Developer Portal for Teams in a [web browser](https://dev.teams.microsoft.com/) or as a [Teams App](https://teams.microsoft.com/l/app/14072831-8a2a-4f76-9294-057bf0b42a68).

You can also use the [Teams Toolkit](https://marketplace.visualstudio.com/items?itemName=TeamsDevApp.ms-teams-vscode-extension) in **Visual Studio Code** to quickly create and deploy your Teams app.

### Creating an app/client ID
In order to get a client ID, you need to [register your application](../get-started/add-aad-app-registration.md) in Azure AD. 
>**Note**: MSAL only supports the Implicit Flow for OAuth. Make sure to enable Implicit Flow in your application in the Azure Portal (it is not enabled by default). Under **Authentication**, find the **Implicit grant** section and select the checkboxes for **Access tokens** and **ID tokens**. 

## See also
* [Microsoft Teams tab sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/master/samples/teams-tab)
* [Build a Microsoft Teams tab](../get-started/build-a-microsoft-teams-tab.md)
