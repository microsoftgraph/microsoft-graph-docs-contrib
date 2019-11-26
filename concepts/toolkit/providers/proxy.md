---
title: "Proxy provider"
description: "The proxy provider allows you to define your own server side authentication with the graph."
localization_priority: Normal
author: nmetulev
---


# Proxy Provider

Use the Proxy Provider to reroute server side authetication, to power the components with Microsoft Graph access.

To learn more, see [providers](../providers.md).

## Get started

You can initialize the Proxy provider in HTML or JavaScript.

### Initialize in your HTML page

Initializing the Proxy provider in HTML is the simplest way to define your own route for custom server side authentication. Use the `mgt-proxy-provider` component to set the **graph-proxy-url**. This will set the defined Proxy provider as the global provider.

```html
<mgt-proxy-provider graph-proxy-url="yoururl.com"></mgt-proxy-provider>
```

| Attribute | Description |
| --- | --- | --- |
| graph-proxy-url   | Base url for the proxy api.|


