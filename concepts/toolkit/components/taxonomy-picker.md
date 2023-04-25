---
title: "Taxonomy picker component in the Microsoft Graph Toolkit"
description: "The taxonomy picker is a component that can query the Microsoft Graph API for Taxonomy and render a dropdown control with terms, allowing selection of a single term based on the specified term set id or a combination of the specified term set id and the specified term id"
ms.localizationpriority: medium
author: anoopt
---

# Taxonomy picker component in the Microsoft Graph Toolkit

The taxonomy picker is a component that can query the [Microsoft Graph API for Taxonomy](/graph/api/resources/termstore-term?view=graph-rest-beta) and render a dropdown control with terms, allowing selection of **a single** term based on the specified term set `id` or a combination of the specified term set `id` and the specified term `id`. 


The component retrieves the first level terms that are present under a specified term set or term. If only the term set id is provided, it returns the first level terms under that term set. If both the term set id and term id are provided, it returns the first level terms under the specified term.

> **Note**
> This capability currently supports a **single** selection of terms coming from the term store. This will be reviewed in the future.

## Example

The following example shows the use of the `mgt-taxonomy-picker` component to select a term from a term set.

![mgt-taxonomy-picker-termset](./images/mgt-taxonomy-picker-termset.png)

The following example shows the use of the `mgt-taxonomy-picker` component to select a child term of a term in a term set.

![mgt-taxonomy-picker-term](./images/mgt-taxonomy-picker-term.png)

The following example shows the use of the `mgt-taxonomy-picker` component to select a child term of a term in a term set in a different language.

![mgt-taxonomy-picker-locale-term](./images/mgt-taxonomy-picker-locale-term.png)

## Properties and attributes

You can use several attributes to change the behavior of the component. The required attribute is `term-set-id`.

| Attribute | Property | Description | Type |
| - | - | - | - |
| term-set-id | termsetId | Mandatory. The ID of the term set to retrieve first level terms from. | String |
| term-id | termId | Optional. The ID of the term to retrieve first level terms from. If not provided, the function retrieves the first level terms under the term set specified by `term-set-id`. <br> *Note* that this term must be one of the terms under the term set with ID `term-set-id`. | String |
| site-id | siteId | Optional. The id of the site where the term set is present. If not specified, the term set is assumed to be at the tenant level. | String |
| version | version | Optional. API version to use when making the GET request. Default is `beta`. | String |
| placeholder | placeholder | Optional. The placeholder to use in the combobox. Default value is `Select a term`. | string |
| locale | locale | Optional. The locale of the terms that need to be displayed. This will be useful only when terms have multiple labels in different languages. | String |
| default-selected-term-id | defaultSelectedTermId | Optional. The id of the term that should be selected by default. | String |
| position | position | Optional. The position of the dropdown. Can be 'above' or 'below'. Default is `below` | String |
| disabled | disabled | Optional. Sets whether the taxonomy picker is disabled. When disabled, the user is not able to search or select terms. | NA |
| cache-enabled | cacheEnabled | Optional. When set, it indicates that the response from the resource will be cached. Default is `false`.| Boolean |
| cache-invalidation-period | cacheInvalidationPeriod | Optional. (Number of milliseconds) When set in combination with `cacheEnabled`, the delay before the cache reaches its invalidation period will be modified by this value. Default is `0` and will use the default invalidation period. | Number |

The following example changes the behavior of the component to fetch first level child terms of specified term set

```html
<mgt-taxonomy-picker term-set-id="138a652e-7f23-46f6-b480-13da2308c235"></mgt-taxonomy-picker>
```

The following example changes the behavior of the component to fetch first level child terms of specified term

```html
<mgt-taxonomy-picker term-set-id="138a652e-7f23-46f6-b480-13da2308c235" term-id="a56caeb7-3b7d-4d22-93a9-0232e12905f6"></mgt-taxonomy-picker>
```

The following example changes the behavior of the component to fetch the French labels of the first level child terms of specified term

```html
<mgt-taxonomy-picker term-set-id="138a652e-7f23-46f6-b480-13da2308c235" term-id="a56caeb7-3b7d-4d22-93a9-0232e12905f6" locale="fr-FR"></mgt-taxonomy-picker>
```

The following example changes the behavior of the component to fetch first level child terms of specified term set that is present in a specified site

```html
<mgt-taxonomy-picker term-set-id="7889007a-fb0e-449f-b629-dedf63ae53de" site-id="contoso.sharepoint.com,0962bcef-48f1-4460-baa8-b7286dcb249b,ba412b3c-951a-4322-ac37-0fe6307b5987"></mgt-taxonomy-picker>
```

The following example changes the behavior of the component to fetch first level child terms of specified term set and sets a specified term to be selected by default

```html
<mgt-taxonomy-picker term-set-id="138a652e-7f23-46f6-b480-13da2308c235" default-selected-term-id="7ab1d163-f691-4676-88b3-c2d8921b73eb"></mgt-taxonomy-picker>
```

## Methods

| Method | Description |
| --- | --- |
| refresh(force?:boolean) | Call the method to refresh the data. By default, the UI will only update if the data changes. Pass `true` to force the component to update.  |

## Events

Event | When is it emitted | Custom data | Cancelable | Bubbles | Works with custom template
------|-------------------|--------------|:-----------:|:---------:|:---------------------------:|
`selectionChanged` | Fired when the user makes a change in selection in the dropdown. | The selected term which will of the type [`TermStore.Term`](/graph/api/resources/termstore-term?view=graph-rest-1.0#json-representation) | No | Yes | Yes

For more information about handling events, see [events](../customize-components/events.md).

## Templates

The `mgt-taxonomy-picker` component supports several [templates](../customize-components/templates.md) that you can use to define the look and feel. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type | Data context | Description |
| --------- | ------------ | ----------- |
| error | The error from Microsoft Graph. | This template will be used if there is an error making the request. |
| loading | N/A | This template is used while the request is being made. |
| no-data | N/A | This template is used when the request returned no data. |

### Example template usage

```html
<mgt-taxonomy-picker term-set-id="138a652e-7f23-46f6-b480-13da2308c235">
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
</mgt-taxonomy-picker>
```

## Microsoft Graph permissions

This component uses the following Microsoft Graph APIs and permissions:

| Configuration | Permission | API
| - | - | - |
| default | TermStore.Read.All | [/termStore/sets/{setId}/children](/graph/api/termstore-term-list-children?view=graph-rest-beta&tabs=http#http-request),<br> [/termStore/sets/{setId}/terms/{termId}/children](/termStore/sets/{setId}/terms/{termId}/children),<br> [sites/{site-id}/termStore/sets/{set-id}/children](/graph/api/termstore-term-list-children?view=graph-rest-1.0&tabs=http#http-request),<br> [sites/{site-id}/termStore/sets/{set-id}/terms/{term-id}/children](/graph/api/termstore-term-list-children?view=graph-rest-1.0&tabs=http#http-request)  |

For more information about permissions, see the Microsoft Graph [permissions reference](../../permissions-reference.md).

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md) to fetch the required data.

## Cache

To enable and configure the cache, use the `cacheEnabled` and `cacheInvalidationPeriod` properties. By default, the `mgt-taxonomy-picker` component does not cache any responses.

|Object store|Cached data|Remarks|
|-----------|-----------|-------|
|`response`|Complete response retrieved from Microsoft Graph for the terms|

See [Caching](../customize-components/cache.md) for more details.

## Localization

The control exposes the following variables that can be localized. See how you setup localization [here](../customize-components/localization.md).

| String name        | Default value     |
| ------------------ | ----------------- |
| comboboxPlaceholder   | 'Select a term' |