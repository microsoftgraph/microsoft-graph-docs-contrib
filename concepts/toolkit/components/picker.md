---
title: "Picker component in the Microsoft Graph Toolkit"
description: "The Picker component enables generic selection of Microsoft Graph entities from any Microsoft Graph API collections"
ms.localizationpriority: medium
author: Mnickii
---

# Picker component in the Microsoft Graph Toolkit

The Picker component uses `mgt-get` to query the Microsoft Graph API then renders a dropdown control allowing selection of **a single** resource from an array of resources.

## Example

The following example shows the use of the `mgt-picker` component to select a task list from a user's task lists. You can use the code editor to see how [properties and attributes](#properties-and-attributes) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-picker--picker&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-picker--picker&source=docs)

## Properties and attributes

You can use several attributes to change the behavior of the component. The required attributes are `key-name` for example `displayName` and `resource` for example `/users`

| Attribute                 | Property                | Description                                                                                                                                                                                                                           |
| ------------------------- | ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| resource                  | resource                | The resource to get from Microsoft Graph (for example, `/me` or `/users`).                                                                                                                                                            |
| placeholder               | placeholder             | The placeholder rendered in the picker (for example, `Select a user` or `Select a task list`).                                                                                                                                        |
| key-name                  | keyName                 | The key to be rendered in the picker (for example, `displayName`).                                                                                                                                                                    |
| selected-value            | selectedValue           | Optional. The value to be set as the currently selected option in the picker. Must be present in the options provided from the Microsoft Graph query.                                                                                 |
| scopes                    | scopes                  | Optional array of strings if using the property or a comma delimited scope if using the attribute. The component will use these scopes (with a supported provider) to ensure that the user has consented to the right permission.     |
| version                   | version                 | Optional API version to use when making the GET request. Default is `v1.0`.                                                                                                                                                           |
| max-pages                 | maxPages                | Optional number of pages (for resources that support paging). Default is 3. Setting this value to 0 will get all pages.                                                                                                               |
| cache-enabled             | cacheEnabled            | Optional Boolean. When set, it indicates that the response from the resource will be cached. Overriden if `refresh()` is called or if `pollingRate` is in use. Default is `false`.                                                    |
| cache-invalidation-period | cacheInvalidationPeriod | Optional number of milliseconds. When set in combination with `cacheEnabled`, the delay before the cache reaches its invalidation period will be modified by this value. Default is `0` and will use the default invalidation period. |
| N/A                       | response                | Read-only response from Microsoft Graph if request was successful.                                                                                                                                                                    |
| N/A                       | error                   | Read-only error from Microsoft Graph if request was not successful.                                                                                                                                                                   |

## CSS custom properties

The `mgt-picker` component defines the following CSS custom properties for you to provide overrides with.

```html
<mgt-picker
  class="picker"
  resource="me/todo/lists"
  scopes="tasks.read, tasks.readwrite"
  key-name="displayName"
></mgt-picker>
```

```css
.picker {
  --picker-background-color: grey;
  --picker-list-max-height: 200px;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Methods

| Method                  | Description                                                                                                                                 |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| refresh(force?:boolean) | Call the method to refresh the data. By default, the UI will only update if the data changes. Pass `true` to force the component to update. |

## Events

| Event              | When is it emitted                                                     | Custom data                                                                                                                                                                              | Cancelable | Bubbles | Works with custom template |
| ------------------ | ---------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :--------: | :-----: | :------------------------: |
| `selectionChanged` | Fired when there is a change in the selected resource in the dropdown. | `{ response: any, error: any }`. The `response` property contains the response retrieved from Microsoft Graph. The `error` property contains information about the error if one occurred |     No     |   Yes   |            Yes             |

> [!TIP]
> For more information about the data returned in the `response` property see the API reference of the API that you used in the `resource` property of the Picker component.

For more information about handling events, see [events](../customize-components/events.md).

## Templates

The `mgt-picker` component supports several [templates](../customize-components/templates.md) that you can use to define the look and feel. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type | Data context                    | Description                                                         |
| --------- | ------------------------------- | ------------------------------------------------------------------- |
| error     | The error from Microsoft Graph. | This template will be used if there is an error making the request. |
| loading   | N/A                             | This template is used while the request is being made.              |
| no-data   | N/A                             | This template is used when the request returned no data.            |

### Example template usage

```html
<mgt-picker resource="me/todo/lists" scopes="tasks.read, tasks.readwrite" key-name="displayName">
  <div>Loading template</div>
    <template data-type="loading">
      Loading
    </template>
    <template data-type="no-data">
      <div>No data</div>
    </template>
    <template data-type="error">
      <div>Error</div>
    </template>
  </div>
</mgt-picker>
```

## Microsoft Graph permissions

Permissions required by this component depend on the data that you want to retrieve with it from Microsoft Graph. For more information about permissions, see the Microsoft Graph [permissions reference](../../permissions-reference.md).

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md) to fetch the required data.

## Cache

To enable and configure the cache, use the `cacheEnabled` and `cacheInvalidationPeriod` properties. By default, the `mgt-picker` component does not cache any responses.

| Object store | Cached data                                                                                                         | Remarks |
| ------------ | ------------------------------------------------------------------------------------------------------------------- | ------- |
| `response`   | Complete response retrieved from Microsoft Graph for the query specified in the `resource` property of `mgt-picker` |

See [Caching](../customize-components/cache.md) for more details.

## Localization

The control exposes the following variables that can be localized. For details about how to set up localization, see [Localizing components](../customize-components/localization.md).

| String name         | Default value    |
| ------------------- | ---------------- |
| comboboxPlaceholder | `Select an item` |
