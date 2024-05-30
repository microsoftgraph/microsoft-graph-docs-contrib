---
title: "Get component in Microsoft Graph Toolkit"
description: "A Get component allows you to make any GET query from Microsoft Graph directly in your HTML."
ms.localizationpriority: medium
author: sebastienlevert
---

# Get component in Microsoft Graph Toolkit

You can use `mgt-get` to make any GET query from Microsoft Graph directly in your HTML. The component doesn't provide a default UI and requires that you write a template.

## Example

The following example shows the use of the `mgt-get` component to display a user's emails. You can use the code editor to see how [properties and attributes](#properties-and-attributes) change the behavior of the component.

# [HTML](#tab/html)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-get-html--get&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-get-html--get&source=docs).

# [React](#tab/react)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-get-react--get&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-get-react--get&source=docs).

---

## Properties and attributes

You can use several attributes to change the behavior of the component. The only required attribute is `resource`.

| Attribute | Property  | Description |
| --- | --- | --- |
| resource | resource | The resource to get from Microsoft Graph (for example, `/me`). |
| scopes | scopes | Optional array of strings if using the property or a comma-delimited scope if using the attribute. The component and a supported provider ensure that the user consents to at least one of the provided permissions. |
| version | version | Optional API version to use when making the `GET` request. Default is `v1.0`.  |
| max-pages | maxPages | Optional number of pages (for resources that support paging). Default is 3. Setting this value to 0 retrieves all pages.  |
| polling-rate | pollingRate | Optional number of milliseconds. When set, the component polls the request URI for updates in the defined interval. If using a delta query, polling always queries the delta API. The template only refreshes when the data changes. |
| cache-enabled | cacheEnabled | Optional Boolean. When set, it indicates that the response from the resource is cached. Override if `refresh()` is called or if `pollingRate` is in use. Default is `false`. |
| cache-invalidation-period | cacheInvalidationPeriod | Optional number of milliseconds. When set in combination with `cacheEnabled`, the delay before the cache reaches its invalidation period modifies the value. Default is `0` and uses the default invalidation period. |
| type | type | Optional type of the expected response. Default is `json`. Supports `json` or `image` (only be supported on endpoints ending with `/photo/value$`). |
| N/A | response | Read-only response from Microsoft Graph if request was successful.  |
| N/A |error| Read-only error from Microsoft Graph if request wasn't successful. |

## Methods

| Method | Description |
| --- | --- |
| refresh(force?: boolean) | Call the method to refresh the data. By default, the UI only updates if the data changes. Pass `true` to force the component to update.  |

## Events

Event | When is it emitted | Custom data | Cancelable | Bubbles | Works with custom template
------|-------------------|--------------|:-----------:|:---------:|:---------------------------:|
`dataChange` | Fired after the component loaded its data. | `{ response: any, error: any }`. The `response` property contains the response retrieved from Microsoft Graph. The `error` property contains information about the error if one occurred | No | No | Yes

> [!TIP]
> For more information about the data returned in the `response` property see the API reference of the API that you used in the `resource` property of the Get component.

For more information about handling events, see [events](../customize-components/events.md).

## Templates

The `mgt-get` component supports several [templates](../customize-components/templates.md) that you can use to define the look and feel. To specify a template, include a `<template>` element inside a component and set the `data-type` to one of the following values.

| Data type | Data context | Description |
| --- | --- | --- |
| default | The response from Microsoft Graph. | The default template is required to render the data coming from Microsoft Graph. |
| value | Data item from the returned `value` array | Use the `value` template instead of the `default` template when expecting the response from the graph to contain an array of items - such as **messages**, **files**, or **users**. The `value` template is automatically repeated for each item returned by the resource. The `value` template also starts rendering the items as soon as they're ready (unlike the default template).|
| error | The error from Microsoft Graph. | This template is used if there's an error making the request. |
| loading | N/A | This template is used while the request is being made. |
| no-data | N/A | This template is used when the request returned no data. |

## Microsoft Graph permissions

Permissions required by this component depend on the data that you want to retrieve with it from Microsoft Graph. Microsoft Graph Toolkit verifies that the current user has consented to at least one of the supplied `scopes`. For more information about permissions, see Microsoft Graph [permissions reference](../../permissions-reference.md).

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md) to fetch the required data.

## Cache

To enable and configure the cache, use the `cacheEnabled` and `cacheInvalidationPeriod` properties. By default, the `mgt-get` component doesn't cache any responses.

|Object store|Cached data|Remarks|
|-----------|-----------|-------|
|`response`|Complete response retrieved from Microsoft Graph for the query specified in the `resource` property of `mgt-get`|

For more information, see [Caching](../customize-components/cache.md).

## Localization

The control doesn't expose any localization variables.
