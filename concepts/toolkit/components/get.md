---
title: "Get component in the Microsoft Graph Toolkit"
description: "A Get component allows you to make any GET query from Microsoft Graph directly in your HTML."
localization_priority: Normal
author: nmetulev
---

# Login component in the Microsoft Graph Toolkit

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

The only required attribute is `resource`. However, you can use several properties to change the behavior.

| Property | Attribute | Description |
| --- | --- | --- |
| `resource` | `resource` | The resource to get from Microsoft Graph (ex: `/me`) |
| `scopes` | `scopes` | Optional array of strings if using the property or a comma delimited scopes if using the attribute. The component will use these scopes (with a supported provider) to ensure the user has  consented to the right permission |
| `version` | `version` | Optional API version to use when making the GET request. Default is `v1.0`.  |
| `maxPages` | `max-pages` | Optional number of pages (for resources that support paging). Default is 3. Setting this value to 0 will GET all pages  |
| `response` | N/A | The raw response from Microsoft Graph  |
| `error` | N/A | The raw error from Microsoft Graph  |

#### Events
| Event | Detail | Description |
| --- | --- | --- |
| `dataChange` | The detail contains the `response` and `error` objects | Fired when the response or error change |

#### Templates

The `mgt-get` component supports several [templates](../templates.md) that you can use to define the look and feel. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type | Data context | Description |
| --- | --- | --- |
| `default` | a raw response from Microsoft Graph | The default template is required to render the data coming from Microsoft Graph  |
| `error` | the raw error from Microsoft Graph | This template will be used if there is an error making the request |
| `loading` | N/A | This template is used while the request is being made |

## Microsoft Graph permissions

This control will require Microsoft Graph APIs and permissions based on the `resource` given.

Example:

| Resource                                                                                                    | Permission     |
| ----------------------------------------------------------------------------------------------------------- | -------------------- |
| [/me/messages](https://docs.microsoft.com/graph/api/user-list-messages?view=graph-rest-1.0&tabs=http)                              | mail.read          |

For more information Permissions, see the Microsoft Graph documentation specific to the requested [resource](https://docs.microsoft.com/graph/api/overview?view=graph-rest-1.0). 

## Authentication

The control uses the global authentication provider described in the [authentication documentation](./../providers.md) to fetch the required data.