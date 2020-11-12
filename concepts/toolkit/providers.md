---
title: "Microsoft Graph Toolkit providers"
description: "The Microsoft Graph Toolkit providers enable authentication and Microsoft Graph access for all components."
localization_priority: Normal
author: nmetulev
---

# Microsoft Graph Toolkit providers

The Microsoft Graph Toolkit providers enable your application to authenticate with and access Microsoft Graph to retreive the data to be rendered in the components. Each provider encapsulates and provides the implementation for acquiring the access token to call the Microsoft Graph APIs, so that you don't have to write this code yourself. You can also use the providers on their own, without components, to quickly implement authentication for your app and make your own calls to Microsoft Graph via the JavaScript SDK client.

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

You can also use the component version of the provider directly in your HTML. Behind the scenees, a new provider is initialized and set as the global provider. The following example shows how to use the MsalProvider.

```HTML
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
<mgt-msal-provider client-id="[YOUR_CLIENT_ID]"></mgt-msal-provider>
```

## Providers namespace

The `Providers` namespace exposes the following properties and functions:

- `globalProvider : IProvider`

Set this property to a provider that you want to use globally. All components use this property to get a reference to the provider. Setting this property will fire the `onProvidersChanged` event.

- `function onProviderUpdated(callbackFunction)`

The `callbackFunction` function will be called when a provider is changed or when the state of a provider changes. A `ProvidersChangedState` enum value will be passed to the function to indicate what updated.

- `getAccessToken({'scopes': scopes[]}) : Promise<string>`

All providers expose the `getAccessToken` method that returns a promise with a valid access token string to be used when making calls to Microsoft Graph.

## Implement your own provider

In scennarios where you want to add Toolkit components to an application with pre-existing authentication code, you can create a custom provider that hooks into your authentication mechanism, instead of using our predefined providers. The toolkit provides two ways to create new providers:

- Create a new `SimpleProvider` that returns an access token from your authentication code by passing in a function.
- Extend the `IProvider` abstract class.

For more details about each one, see [custom providers](./providers/custom.md).

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

## Making your own calls to Microsoft Graph

All components can access Microsoft Graph without any customization required as long as you initialize a provider (as described in the previous section). To get a reference to the same Microsoft Graph SDK used by the components, first get a reference to the global IProvider and then use the `Graph` object, as shown:

```js
import { Providers } from '@microsoft/mgt';

let provider = Providers.globalProvider;
if (provider) {
  let graphClient = provider.graph.client;
  let userDetails = await graphClient.api('me').get();
}
```

There might be cases were you will need to pass additional permissions, depending on the API you're calling.

```js
import { prepScopes } from '@microsoft/mgt';

graphClient
  .api('me')
  .middlewareOptions(prepScopes('user.read', 'calendar.read'))
  .get();
```

The `graph` object is an instance of the [Microsoft Graph Javascript SDK](https://github.com/microsoftgraph/msgraph-sdk-javascript) and you can use it to make any calls to Microsoft Graph.
