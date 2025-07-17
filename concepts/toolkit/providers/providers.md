---
title: "Microsoft Graph Toolkit providers"
description: "The Microsoft Graph Toolkit providers enable authentication and Microsoft Graph access for all components."
ms.localizationpriority: medium
author: sebastienlevert
ms.date: 11/07/2024
---

# Microsoft Graph Toolkit providers

The Microsoft Graph Toolkit providers enable your application to authenticate with Microsoft Identity and access Microsoft Graph in only few lines of code. Each provider handles user authentication and acquiring the access tokens to call Microsoft Graph APIs, so that you don't have to write this code yourself.

You can use the providers on their own, without components, to quickly implement authentication for your app and make calls to Microsoft Graph via the JavaScript client SDK.

The providers are required when using the Microsoft Graph Toolkit components as the components use them to access Microsoft Graph. If you already have your own authentication and want to use the components, you can use a [custom provider](./custom.md) instead.

The Toolkit includes the following providers.

| Providers                                | Description                                                                                                                                |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| [Custom](../providers/custom.md)         | Creates a custom provider to enable authentication and access to Microsoft Graph by using your application's existing authentication code. |
| [Electron](../providers/electron.md)     | Authenticates and provides Microsoft Graph access to components inside of Electron apps.                                                   |
| [MSAL2](../providers/msal2.md)           | Uses MSAL-browser to sign in users and acquire tokens to use with Microsoft Graph.                                                         |
| [Proxy](../providers/proxy.md)           | Allows the use of backend authentication by routing all calls to Microsoft Graph through your backend.                                     |
| [SharePoint](../providers/sharepoint.md) | Authenticates and provides Microsoft Graph access to components inside of SharePoint web parts.                                            |
| [TeamsFx](../providers/teamsfx.md)       | Use the TeamsFx provider inside your Microsoft Teams applications to provide Microsoft Graph Toolkit components access to Microsoft Graph. |

## Initializing a provider

To use a provider in your app, you need to initialize a new provider and then set it as the global provider in the Providers namespace. We recommend doing this before you start using any of the components. You can do this one of two ways:

**Option 1: Use the provider component**

You can use the component version of the provider directly in your HTML. Behind the scenes, a new provider is initialized and set as the global provider. The following example shows how to use the MSAL2 provider.

```HTML
<script type="module">
  import { registerMgtComponents, registerMgtMsal2Provider } from "https://unpkg.com/@microsoft/mgt@4";
  registerMgtMsal2Provider();
  registerMgtComponents();
</script>
<mgt-msal2-provider client-id="YOUR_CLIENT_ID"></mgt-msal2-provider>
```

**Option 2: Initialize in code**

Initializing your provider in your JavaScript code enables you to provide more options. To do this, create a new provider instance and set the value of the `Providers.globalProvider` property to the provider you'd like to use. The following example shows how to use the MSAL2 provider.

```js
import { Providers } from "@microsoft/mgt-element";
import { Msal2Provider } from "@microsoft/mgt-msal2-provider";
Providers.globalProvider = new Msal2Provider({
  clientId: "YOUR_CLIENT_ID",
});
```

> **Note:** For details about how to register your app and get a client ID, see [Create a Microsoft Entra app](../get-started/add-aad-app-registration.md).

## Permission Scopes

We recommend adding all the permission scopes your application needs to the `scopes` attribute or property when initializing your provider (this does not apply to the [SharePoint provider](../providers/sharepoint.md)). This is optional, but will improve your user experience by presenting a single consent screen to the user with an aggregated list of permissions requested by all components in your app, rather than presenting separate screens for each component. The following examples show how to do this with the MSAL2 Provider.

```HTML
<script type="module">
  import { registerMgtComponents, registerMgtMsal2Provider } from "https://unpkg.com/@microsoft/mgt@4";
  registerMgtMsal2Provider();
  registerMgtComponents();
</script>
<mgt-msal2-provider
  client-id="YOUR_CLIENT_ID"
  scopes="user.read,people.read"
></mgt-msal2-provider>
```

If you're initializing the provider in code, provide the permission scopes in an array in the `scopes` property.

```js
import { Providers } from "@microsoft/mgt-element";
import { Msal2Provider } from "@microsoft/mgt-msal2-provider";
Providers.globalProvider = new Msal2Provider({
  clientId: 'YOUR_CLIENT_ID'
  scopes:['user.read','people.read']
});
```

You can find the list of permission scopes required by each component in the **Microsoft Graph permissions** section of each component's documentation page.

## Custom hosts

You can specify custom hosts for the Microsoft Graph client. This allows you to call non-Microsoft Graph Microsoft Entra ID-secured APIs. When you specify custom hosts, make sure that you request the scope for the access token.

```HTML
<script type="module">
  import { registerMgtComponents, registerMgtMsal2Provider } from "https://unpkg.com/@microsoft/mgt@4";
  registerMgtMsal2Provider();
  registerMgtComponents();
</script>
<mgt-msal2-provider 
  client-id="YOUR_CLIENT_ID"
  custom-hosts="myapi.com,anotherapi.com"
></mgt-msal2-provider>
```

If you're initializing the provider in code, provide the host names in an array in the `customHosts` property.

```ts
import { Providers } from "@microsoft/mgt-element";
import { Msal2Provider } from "@microsoft/mgt-msal2-provider";
Providers.globalProvider = new Msal2Provider({
  clientId: 'YOUR_CLIENT_ID',
  customHosts: ['myapi.com','anotherapi.com']
});
```

>**Note:** these are host names, not URIs.

To call the custom APIs, request that API scope.

```HTML
<mgt-get resource="https://myapi.com/v1.0/api" scopes="api://CUSTOM_API_GUID/SCOPE">
  ...
</mgt-get>
```
Or via Javascript/Typescript:

```ts
import { prepScopes } from "@microsoft/mgt-element";

graphClient
  .api("https://myapi.com/v1.0/api")
  .middlewareOptions(prepScopes("api://CUSTOM_API_GUID/SCOPE"))
  .get();
...
```

## Provider state

The provider keeps track of the user's authentication state and communicates it to the components. For example, when a user successfully signs in, the `ProviderState` is updated to `SignedIn`, signaling to the components that they are now able to make calls to Microsoft Graph. The `ProviderState` enum defines three states, as shown.

```ts
export enum ProviderState {
  Loading,
  SignedOut,
  SignedIn,
}
```

In some scenarios, you will want to show certain functionality or perform an action only after a user has successfully signed in. You can access and check the provider state, as shown in the following example.

```js
import { Providers, ProviderState } from "@microsoft/mgt-element";

//assuming a provider has already been initialized

if (Providers.globalProvider.state === ProviderState.SignedIn) {
  //your code here
}
```

You can also use the `Providers.onProviderUpdated` method to get notified whenever the state of the provider changes.

```js
import { Providers, ProviderState } from "@microsoft/mgt-element";

//assuming a provider has already been initialized

const providerStateChanged = () => {
  if (Providers.globalProvider.state === ProviderState.SignedIn) {
    // user is now signed in
  }
};

// register a callback for when the state changes
Providers.onProviderUpdated(providerStateChanged);

// remove callback if necessary
Providers.removeProviderUpdatedListener(providerStateChanged);
```

## Getting an access token

Each provider exposes a function called `getAccessToken` that can retrieve the current access token or retrieve a new access token for the provided scopes. The following example shows how to get a new access token with the `User.Read` permission scope.

```js
import { Providers, ProviderState } from "@microsoft/mgt-element";

//assuming a provider has already been initialized

if (Providers.globalProvider.state === ProviderState.SignedIn) {
  const token = await Providers.globalProvider.getAccessToken({
    scopes: ["User.Read"],
  });
}
```

## Making your own calls to Microsoft Graph

All components can access Microsoft Graph without any customization required as long as you initialize a provider (as described in the previous sections). If you want to make your own calls to Microsoft Graph, you can do so by getting a reference to the same Microsoft Graph SDK used by the components. First, get a reference to the global `IProvider` and then use the `graph` object as shown:

```js
import { Providers } from "@microsoft/mgt-element";

let provider = Providers.globalProvider;
if (provider) {
  let graphClient = provider.graph.client;
  let userDetails = await graphClient.api("me").get();
}
```

There might be cases where you need to pass additional permissions, depending on the API you're calling. The following example shows how to do this.

```js
import { prepScopes } from "@microsoft/mgt-element";

graphClient
  .api("me")
  .middlewareOptions(prepScopes("user.read", "calendar.read"))
  .get();
```

## Using multiple providers

In some scenarios, your application will run in different environments and require a different provider for each. For example, the app might run as both a web application and a Microsoft Teams tab, which means you might need to use both the MSAL2 provider and the Teams MSAL2 provider. For this scenario, all provider components have the `depends-on` attribute to create a fallback chain, as shown in the following example.

```html
<mgt-teams-msal2-provider
  client-id="[CLIENT-ID]"
  auth-popup-url="auth.html"
></mgt-teams-msal2-provider>

<mgt-msal2-provider
  client-id="[CLIENT-ID]"
  depends-on="mgt-teams-provider"
></mgt-msal2-provider>
```

In this scenario, the MSAL2 provider will only be used if your app is running as a web application and the Teams MSAL2 provider is not available in the current environment.

To accomplish the same in code, you can use the `isAvailable` property on the provider, as shown.

```ts
if (TeamsProvider.isAvailable) {
  Providers.globalProvider = new TeamsProvider(teamsConfig);
} else {
  Providers.globalProvider = new Msal2Provider(msalConfig);
}
```

## User Login/Logout

When you have the right providers initialized for your application, you can add the Toolkit's [Login component](../components/login.md) to easily and quickly implement user login and logout. The component works with the provider to handle all of the authentication logic and login/logout functionality. The following example uses the MSAL2 provider and the Login component.

```HTML
<script type="module">
  import { registerMgtComponents, registerMgtMsal2Provider } from "https://unpkg.com/@microsoft/mgt@4";
  registerMgtMsal2Provider();
  registerMgtComponents();
</script>
<mgt-msal2-provider client-id="YOUR_CLIENT_ID"></mgt-msal2-provider>
<mgt-login></mgt-login>
```

In scenarios where you want to implement this yourself, rather than using the Toolkit's Login component, you can do so by using the `login` and `logout` methods of the provider.

## Implement your own provider

In scenarios where you want to add Toolkit components to an application with pre-existing authentication code, you can create a custom provider that hooks into your authentication mechanism, instead of using our predefined providers. The toolkit provides two ways to create new providers:

- Create a new `SimpleProvider` that returns an access token from your authentication code by passing in a function.
- Extend the `IProvider` abstract class.

For more details about each one, see [custom providers](../providers/custom.md).
