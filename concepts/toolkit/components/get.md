---
title: "Get component in the Microsoft Graph Toolkit"
description: "A Get component allows you to make any GET query from Microsoft Graph directly in your HTML."
localization_priority: Normal
author: nmetulev
---

# Get component in the Microsoft Graph Toolkit

`mgt-get` allows you to make any GET query from Microsoft Graph directly in your HTML. The component does not provide a default UI and requires the developer to write a template.

#### Example

```html
<mgt-get resource="/me/messages" version="beta" scopes="mail.read" max-pages="2">
  <template>
    emails: {{value.length}}
  </template>
  <template data-type="loading">
    loading
  </template>
</mgt-get>
```

#### Properties and Attributes

Developers can use several attributes to change the behavior of the component. The only required attribute is `resource`.

| Attribute | Property  | Description |
| --- | --- | --- |
| `resource` | `resource` | The resource to get from Microsoft Graph (ex: `/me`) |
| `scopes` | `scopes` | Optional array of strings if using the property or a comma delimited scopes if using the attribute. The component will use these scopes (with a supported provider) to ensure the user has  consented to the right permission |
| `version` | `version` | Optional API version to use when making the GET request. Default is `v1.0`.  |
| `max-pages` | `maxPages` | Optional number of pages (for resources that support paging). Default is 3. Setting this value to 0 will GET all pages  |
| N/A | `response` | Read only response from Microsoft Graph if request was successful  |
| N/A |`error`| Read only error from Microsoft Graph if request was not successful |

#### Events
| Event | Detail | Description |
| --- | --- | --- |
| `dataChange` | The detail contains the `response` and `error` objects | Fired when the response or error change |

#### Templates

The `mgt-get` component supports several [templates](../templates.md) that you can use to define the look and feel. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type | Data context | Description |
| --- | --- | --- |
| `default` | the response from Microsoft Graph | The default template is required to render the data coming from Microsoft Graph  |
| `error` | the error from Microsoft Graph | This template will be used if there is an error making the request |
| `loading` | N/A | This template is used while the request is being made |

## Microsoft Graph permissions


For more information regarding Permissions, see the Microsoft Graph [Permissions Reference](https://docs.microsoft.com/en-us/graph/permissions-reference). 

## Authentication

The control uses the global authentication provider described in the [authentication documentation](./../providers.md) to fetch the required data.