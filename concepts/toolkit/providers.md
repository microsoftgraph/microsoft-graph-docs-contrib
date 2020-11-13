---
title: "Microsoft Graph Toolkit providers"
description: "The Microsoft Graph Toolkit providers enable authentication and Microsoft Graph access for all components."
localization_priority: Normal
author: nmetulev
---

# Microsoft Graph Toolkit providers

The Microsoft Graph Toolkit providers enable your application to authenticate with Microsoft Identity and access Microsoft Graph in only few lines of code. Each provider handles user authentication and acquiring the access tokens to call Microsoft Graph APIs, so that you don't have to write this code yourself. 

You can use the providers on their own, without components, to quickly implement authentication for your app and make calls to Microsoft Graph via the JavaScript client SDK.

The providers are required when using the Microsoft Graph Toolkit components as the components use them to access Microsoft Graph. If you already have your own authentication and simply want to use the components, you can use a [custom provider](./providers/custom.md) instead.

The Toolkit includes the following providers:

|Providers|Description|
|---------|-----------|
|[Msal](./providers/msal.md)|Uses MSAL.js to sign in users and acquire tokens to use with Microsoft Graph in a web application.|
|[SharePoint](./providers/sharepoint.md)|Authenticates and provides Microsoft Graph access to components inside of SharePoint web parts.|
|[Teams](./providers/teams.md)|Authenticates and provides Microsoft Graph access to components inside of Microsoft Teams tabs.|
|[Proxy](./providers/proxy.md)|Allows the use of backend authentication by routing all calls to Microsoft Graph through your backend.|
|[Custom](./providers/custom.md)|Create a custom provider to enable authentication and access to Microsoft Graph with your application's existing authentication code.|

## Initializing a provider

To use a provider in your app, you need to initialize a new provider and then set it as the global provider in the Providers namespace. We recommend doing this before you start using any of the components. You can do this one of two ways:

**Option 1: Initialize in code**

To initalize a provider in your JavaScript code, create a new provider instance and set the value of the `Providers.globalProvider` property to the provider you'd like to use. The following example shows how to use the MsalProvider.

```js
import {Providers, MsalProvider } from "@microsoft/mgt";
Providers.globalProvider = new MsalProvider({
  clientId: 'YOUR_CLIENT_ID'
});
```

**Option 2: Use the provider component**

You can also use the component version of the provider directly in your HTML. Behind the scenes, a new provider is initialized and set as the global provider. The following example shows how to use the MsalProvider.

```HTML
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
<mgt-msal-provider client-id="YOUR_CLIENT_ID"></mgt-msal-provider>
```

## Provider state

The provider keeps track of the user's authentication state and communicates this to the components. For example, when a user successfully signs in, the `ProviderState` is updated to `SignedIn`, signaling to the components that they are now able to make calls to Microsoft Graph. The `ProviderState` enum defines three states, as shown.

```ts
export enum ProviderState {
  Loading,
  SignedOut,
  SignedIn
}
```

In some scenarios, you will want to show certain functionality or perform an action only after a user has successfully signed in. You can access and check the provider state, as shown in the following example.

```js
import { Providers, ProviderState } from '@microsoft/mgt'

//assuming a provider has already been initialized

if (Providers.globalProvider.state === ProviderState.SignedIn) {
  //your code here
}
```

## Getting an access token

Each provider exposes a function called `getAccessToken` that can retreive the current access token or retrieve a new access token for the provided scopes. The following example shows how to get a new access token with the `User.Read` permission scope.

```js
import { Providers, ProviderState } from "@microsoft/mgt";

//assuming a provider has already been initialized

if (Providers.globalProvider.state == ProviderState.SignedIn) {
  const token = Provider.globalProvider.getAccessToken({scopes: 'User.Read']})
}
```

## Making your own calls to Microsoft Graph

All components can access Microsoft Graph without any customization required as long as you initialize a provider (as described in the previous sections). If you want to make your own calls to Microsoft Graph, you can do so by getting a reference to the same Microsoft Graph SDK used by the components. First, get a reference to the global `IProvider` and then use the `graph` object as shown:

```js
import { Providers } from '@microsoft/mgt';

let provider = Providers.globalProvider;
if (provider) {
  let graphClient = provider.graph.client;
  let userDetails = await graphClient.api('me').get();
}
```
There might be cases where you need to pass additional permissions, depending on the API you're calling. The following example shows how to do this.

```js
import { prepScopes } from '@microsoft/mgt';

graphClient
  .api('me')
  .middlewareOptions(prepScopes('user.read', 'calendar.read'))
  .get();
```

## Using multiple providers

In some scenarios, your application will run in different environments and require a different provider for each. For example, the app might run as both a web application and a Microsoft Teams tab, which means you might need to use both the MsalProvider and the TeamsProvider. For this scenario, all provider components have the `depends-on` attribute to create a fallback chain, as shown in the following example.

```html
<mgt-teams-provider
  client-id="[CLIENT-ID]"
  auth-popup-url="auth.html" ></mgt-teams-provider>

<mgt-msal-provider
  client-id="[CLIENT-ID]"
  depends-on="mgt-teams-provider" ></mgt-msal-provider>
```

In this scenario, the MsalProvider will only be used if your app is running as a web application and the TeamsProvider is not available in the current environment.

To accomplish the same in code, you can use the `isAvailable` property on the provider, as shown.

```ts
if (TeamsProvider.isAvailable) {
    Providers.globalProvider = new TeamsProvider(teamsConfig);
} else {
    Providers.globalProvider = new MsalProvider(msalConfig)
}
```

## Providers namespace

The `Providers` namespace exposes the following properties and functions:

- `globalProvider : IProvider`

Set this property to a provider that you want to use globally. All components use this property to get a reference to the provider. Setting this property will fire the `onProvidersChanged` event.

- `function onProviderUpdated(callbackFunction)`

The `callbackFunction` function will be called when a provider is changed or when the state of a provider changes. A `ProvidersChangedState` enum value will be passed to the function to indicate what updated.

## Implement your own provider

In scennarios where you want to add Toolkit components to an application with pre-existing authentication code, you can create a custom provider that hooks into your authentication mechanism, instead of using our predefined providers. The toolkit provides two ways to create new providers:

- Create a new `SimpleProvider` that returns an access token from your authentication code by passing in a function.
- Extend the `IProvider` abstract class.

For more details about each one, see [custom providers](./providers/custom.md).
