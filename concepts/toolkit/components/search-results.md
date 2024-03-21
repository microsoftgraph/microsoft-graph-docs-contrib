---
title: "Search results component in Microsoft Graph Toolkit"
description: "A search results component allows you to make queries to the search endpoint of Microsoft Graph directly in your HTML."
ms.localizationpriority: medium
author: sebastienlevert
---

# Search results component in Microsoft Graph Toolkit

You can use `mgt-search-results` to make search queries to Microsoft Graph directly in your HTML. The component provides some default result type renderings but also offers full customization of the templates.

## Example

The following example shows the use of the `mgt-search-results` component to the most relevant documents. You can use the code editor to see how [properties and attributes](#properties-and-attributes) change the behavior of the component.

# [HTML](#tab/html)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-search-results-html--search-results&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-search-results-html--search-results&source=docs).

# [React](#tab/react)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-search-results-react--search-results&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-search-results-react--search-results&source=docs).

---

## Properties and attributes

You can use several attributes to change the behavior of the component. The required attributes are `query-string` and `entity-types`.

| Attribute                 | Property                | Description                                                                                                                                                                                                                               |
| ------------------------- | ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| query-string              | queryString             | The query to send to Microsoft Search.                                                                                                                                                                                                    |
| entity-types              | entityTypes             | One or more types of resources expected in the response. Possible values are: list, site, listItem, message, event, drive, driveItem, person, externalItem, acronym, bookmark, chatMessage. Default is `driveItem`, `listItem`, `site`.   |
| content-sources           | contentSources          | Content sources to use with external items.                                                                                                                                                                                               |
| paging-max                | pagingMax               | The maximum number of pages to be clickable in the paging control. Default is `7`.                                                                                                                                                        |
| query-template            | queryTemplate           | Query template to use in complex search scenarios. Query templates are currently supported only on the beta endpoint.                                                                                                                     |
| fetch-thumbnail           | fetchThumbnail          | Sets whether the result thumbnail should be fetched from the Microsoft Graph. Default is `false`.                                                                                                                                         |
| enable-top-results        | enableTopResults        | This triggers hybrid sort for messages: the first three messages are the most relevant. This property is only applicable to `entityType=message`. Default is `false`.                                                                         |
| scopes                    | scopes                  | Optional array of strings if using the property or a comma delimited scope if using the attribute. The component uses these scopes (with a supported provider) to ensure that the user consents to the right permission.         |
| size                      | size                    | The size of the page to be retrieved. The maximum value is `1000`. Default is `10`.                                                                                                                                                       |
| fields                    | fields                  | Contains the fields to be returned for each resource.                                                                                                                                                                                     |
| version                   | version                 | Optional API version to use when making the request. Default is `v1.0`.                                                                                                                                                               |
| cache-enabled             | cacheEnabled            | Optional Boolean. When set, it indicates that the response from the resource is cached. Override if `refresh()` is called or if `pollingRate` is in use. Default is `false`.                                                        |
| cache-invalidation-period | cacheInvalidationPeriod | Optional number of milliseconds. When set in combination with `cacheEnabled`, the delay before the cache reaches its invalidation period is modified by this value. Default is `30000` and uses the default invalidation period. |
| N/A                       | error                   | Read-only error from Microsoft Graph if request wasn't successful.                                                                                                                                                                       |

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
| refresh(force?: boolean) | Call the method to refresh the data. By default, the UI only updates if the data changes. Pass `true` to force the component to update. |

## Events

| Event        | When is it emitted                         | Custom data                                                                                                                                                                              | Cancelable | Bubbles | Works with custom template |
| ------------ | ------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :--------: | :-----: | :------------------------: |
| `dataChange` | Fired after the component loaded its data. | `{ response: any, error: any }`. The `response` property contains the response retrieved from Microsoft Graph. The `error` property contains information about the error if one occurred. |     No     |   No    |            Yes             |

For more information about handling events, see [events](../customize-components/events.md).

## Templates

The `mgt-search-results` component supports several [templates](../customize-components/templates.md) that you can use to define the look and feel. To specify a template, include a `<template>` element inside a component and set the `data-type` to one of the following values.

| Data type | Data context                              | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| --------- | ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| default   | The response from Microsoft Graph.        | The default can be used to render the entire response coming from Microsoft Graph.                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| result-\* | Data item from the returned `value` array | Use the `result-*` template instead of the `default` template when expecting the response from the graph to contain an array of items. The `result-*` template is automatically repeated for each item returned by the resource. The `result-*` template starts rendering the items as soon as they're ready (unlike the default template). You can have multiple `result-*` templates, one per `entityType` (See the available `entity-type` in [properties and attributes](#properties-and-attributes)) |
| error     | The error from Microsoft Graph.           | This template is used if there's an error making the request.                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| loading   | N/A                                       | This template is used while the request is being made.                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| no-data   | N/A                                       | This template is used when the request returned no data.                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |

## Microsoft Graph permissions

Permissions required by this component depend on the data that you want to retrieve with it from Microsoft Graph. For more information about permissions, see [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview#scope-search-based-on-entity-types).

### Subcomponents

The `mgt-search-results` component consists of one or more subcomponents that might require other permissions than the ones required for this component. For more information, see the documentation for each subcomponent:

- [mgt-file](people.md)
- [mgt-person](person.md)

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md) to fetch the required data.

## Cache

To enable and configure the cache, use the `cacheEnabled` and `cacheInvalidationPeriod` properties. By default, the `mgt-search-results` component doesn't cache any responses.

| Object store | Cached data                                                                                     | Remarks |
| ------------ | ----------------------------------------------------------------------------------------------- | ------- |
| `response`   | Complete response retrieved from Microsoft Graph for the query executed by `mgt-search-results` |

For more information, see [Caching](../customize-components/cache.md).

## Localization

The control exposes the following variables that can be localized. For details about how to set up localization, see [Localizing components](../customize-components/localization.md).

| String name | Default value |
| ----------- | ------------- |
| modified    | `modified on` |
| back        | `Back`        |
| next        | `Next`        |
| pages       | `pages`       |
| page        | `Page`        |
