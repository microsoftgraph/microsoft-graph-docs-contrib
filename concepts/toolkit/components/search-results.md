---
title: "Search results component in Microsoft Graph Toolkit"
description: "A search results component allows you to make queries to the search endpoint of Microsoft Graph directly in your HTML."
ms.localizationpriority: medium
author: sebastienlevert
---

# Search results component in Microsoft Graph Toolkit

[!INCLUDE [preview-disclaimer](./includes/preview-disclaimer.md)]

You can use `mgt-search-results` to make search queries to Microsoft Graph directly in your HTML. The component provides some default result type renderings but also offers full customization of the templates.

## Example

The following example shows the use of the `mgt-search-results` component to the most relevant documents. You can use the code editor to see how [properties and attributes](#properties-and-attributes) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=preview-mgt-search-results--search-results&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/preview-mgt-search-results--search-results&source=docs)

## Properties and attributes

You can use several attributes to change the behavior of the component. The required attributes are `query-string` and `entity-types`.

| Attribute                 | Property                | Description                                                                                                                                                                                                                               |
| ------------------------- | ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| query-string              | queryString             | The query to send to Microsoft Search.                                                                                                                                                                                                    |
| entity-types              | entityTypes             | One or more types of resources expected in the response. Possible values are: list, site, listItem, message, event, drive, driveItem, person, externalItem, acronym, bookmark, chatMessage. Default is `driveItem`, `listItem`, `site`.   |
| content-sources           | contentSources          | Content sources to use with external items.                                                                                                                                                                                               |
| paging-max                | pagingMax               | The maximum number of pages to be clickable in the paging control. Default is `7`.                                                                                                                                                        |
| query-template            | queryTemplate           | Query template to use in complex search scenarios. Query Templates are currently supported only on the beta endpoint.                                                                                                                     |
| fetch-thumbnail           | fetchThumbnail          | Sets whether the result thumbnail should be fetched from the Microsoft Graph. Default is `false`.                                                                                                                                         |
| enable-top-results        | enableTopResults        | This triggers hybrid sort for messages: the first 3 messages are the most relevant. This property is only applicable to `entityType=message`. Default is `false`.                                                                         |
| scopes                    | scopes                  | Optional array of strings if using the property or a comma delimited scope if using the attribute. The component will use these scopes (with a supported provider) to ensure that the user has consented to the right permission.         |
| size                      | size                    | The size of the page to be retrieved. The maximum value is `1000`. Default is `10`.                                                                                                                                                       |
| fields                    | fields                  | Contains the fields to be returned for each resource.                                                                                                                                                                                     |
| version                   | version                 | Optional API version to use when making the GET request. Default is `v1.0`.                                                                                                                                                               |
| cache-enabled             | cacheEnabled            | Optional Boolean. When set, it indicates that the response from the resource will be cached. Overriden if `refresh()` is called or if `pollingRate` is in use. Default is `false`.                                                        |
| cache-invalidation-period | cacheInvalidationPeriod | Optional number of milliseconds. When set in combination with `cacheEnabled`, the delay before the cache reaches its invalidation period will be modified by this value. Default is `30000` and will use the default invalidation period. |
| N/A                       | error                   | Read-only error from Microsoft Graph if request was not successful.                                                                                                                                                                       |

## CSS custom properties

The `mgt-search-results` component defines the following CSS custom properties.

```html
<mgt-search-results
  class="search-results"
  query-string="contoso"
  entity-types="driveItem"
></mgt-search-results>
```

```css
.search-results {
  --answer-border-radius: 10px;
  --answer-box-shadow: 0px 2px 30px pink;
  --answer-border: dotted 2px white;
  --answer-padding: 8px 0px;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Methods

| Method                  | Description                                                                                                                                 |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| refresh(force?:boolean) | Call the method to refresh the data. By default, the UI will only update if the data changes. Pass `true` to force the component to update. |

## Events

| Event        | When is it emitted                         | Custom data                                                                                                                                                                              | Cancelable | Bubbles | Works with custom template |
| ------------ | ------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :--------: | :-----: | :------------------------: |
| `dataChange` | Fired after the component loaded its data. | `{ response: any, error: any }`. The `response` property contains the response retrieved from Microsoft Graph. The `error` property contains information about the error if one occurred |     No     |   No    |            Yes             |

For more information about handling events, see [events](../customize-components/events.md).

## Templates

The `mgt-search-results` component supports several [templates](../customize-components/templates.md) that you can use to define the look and feel. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type | Data context                              | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| --------- | ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| default   | The response from Microsoft Graph.        | The default can be used to render the entire response coming from Microsoft Graph.                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| result-\* | Data item from the returned `value` array | Use the `result-*` template instead of the `default` template when expecting the response from the graph to contain an array of items. The `result-*` template will automatically be repeated for each item returned by the resource. The `result-*` template will also start rendering the items as soon as they are ready (unlike the default template). You can have multiple `result-*` templates, one per `entityType` (See the available `entity-type` in [properties and attributes](#properties-and-attributes)) |
| error     | The error from Microsoft Graph.           | This template will be used if there is an error making the request.                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| loading   | N/A                                       | This template is used while the request is being made.                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| no-data   | N/A                                       | This template is used when the request returned no data.                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |

## Microsoft Graph permissions

Permissions required by this component depend on the data that you want to retrieve with it from Microsoft Graph. For more information about permissions, see the [Search API Overview](/graph/api/resources/search-api-overview#scope-search-based-on-entity-types).

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md) to fetch the required data.

## Cache

To enable and configure the cache, use the `cacheEnabled` and `cacheInvalidationPeriod` properties. By default, the `mgt-search-results` component does not cache any responses.

| Object store | Cached data                                                                                     | Remarks |
| ------------ | ----------------------------------------------------------------------------------------------- | ------- |
| `response`   | Complete response retrieved from Microsoft Graph for the query executed by `mgt-search-results` |

See [Caching](../customize-components/cache.md) for more details.

## Localization

The control exposes the following variables that can be localized. For details about how to set up localization, see [Localizing components](../customize-components/localization.md).

| String name | Default value |
| ----------- | ------------- |
| modified    | `modified on` |
| back        | `Back`        |
| next        | `Next`        |
| pages       | `pages`       |
| page        | `Page`        |
