---
title: "Proxy provider"
description: "The proxy provider allows you to use your own server-side authentication with the Microsoft Graph Toolkit."
ms.localizationpriority: medium
author: sebastienlevert
ms.date: 11/07/2024
ms.topic: article
---

# Proxy provider

> [!CAUTION]
> The Microsoft Graph Toolkit is deprecated. The retirement period begins September 1, 2025, with full retirement planned for August 28, 2026. Developers should migrate to using the Microsoft Graph SDKs or other supported Microsoft Graph tools for building web experiences. For more information, see the [deprecation announcement](https://devblogs.microsoft.com/microsoft365dev/microsoft-graph-toolkit-retirement/).

When you use the proxy provider, you can use your backend authentication (such as Auth2.0 On-Behalf-Of flow) to power the Microsoft Graph Toolkit by routing all calls to Microsoft Graph through your own backend.

Your backend service must expose an API that is called for every call to Microsoft Graph. For example, when a component attempts to get a resource, the ProxyProvider instead calls your base API and appends that resource.

<pre>https://graph.microsoft.com/v1.0/me => https://myurl.com/api/GraphProxy/v1.0/me</pre>

Your API implementation should then call Microsoft Graph on behalf of the user and return the results to the component.

For an implementation example, see the [ASP.NET MVC sample](https://github.com/pnp/mgt-samples/tree/main/samples/app/proxy-provider-asp-net-core).

To learn more about authentication providers, see [providers](./providers.md).

## Get started

You can initialize the proxy provider in HTML or JavaScript. You should do it only once per page.

### Initialize in your HTML page

Initializing the proxy provider in HTML is the simplest way to define your own route for custom server-side authentication. Use the `mgt-proxy-provider` component to set the **graph-proxy-url**. It sets the defined proxy provider as the global provider.

```html
<mgt-proxy-provider
  graph-proxy-url="https://myurl.com/api/GraphProxy"
></mgt-proxy-provider>
```

| Attribute       | Description                 |
| --------------- | --------------------------- |
| graph-proxy-url | Base URL for the proxy API. |

### Initialize in JavaScript

You can provide more options by initializing the provider in JavaScript.

```ts
import { Providers } from "@microsoft/mgt-element";
import { ProxyProvider } from "@microsoft/mgt-proxy-provider";

Providers.globalProvider = new ProxyProvider(
  "https://myurl.com/api/GraphProxy"
);
```

Optionally, you can send additional headers with each request to your proxy api by using an optional function as the second parameter in the constructor.

```ts
import { Providers } from "@microsoft/mgt-element";
import { ProxyProvider } from "@microsoft/mgt-proxy-provider";

Providers.globalProvider = new ProxyProvider(
  "https://myurl.com/api/GraphProxy",
  async () => {
    return {
      header: "value",
      header2: "value2",
    };
  }
);
```

It's useful when you need to pass tokens or other headers to your backend.

If you're using the `mgt-login` component, you should also specify the `login` and `logout` functions for the provider:

```ts
import { Providers } from "@microsoft/mgt-element";
import { ProxyProvider } from "@microsoft/mgt-proxy-provider";

let provider = new ProxyProvider("https://myurl.com/api/GraphProxy");
provider.login = () => {
  /* will be called when "Sign In" is clicked */
};
provider.logout = () => {
  /* will be called when "Sign Out" is called */
};

Providers.globalProvider = provider;
```
