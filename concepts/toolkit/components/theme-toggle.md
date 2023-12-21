---
title: "Theme toggle component in the Microsoft Graph Toolkit"
description: "The theme toggle component allows the user to set or change the document theme from light to dark using a toggle."
ms.localizationpriority: medium
author: musale
---

# Theme toggle component in the Microsoft Graph Toolkit

The theme toggle component allows the user to set or change the document theme from light to dark using a toggle.

A user is able to use the theme toggle component to set the default theme to `light` or `dark`. The user can then toggle these modes using a toggle switch.

## Example

The following example shows how the theme toggle sets the light or dark mode based on the user's preference.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-theme-toggle--user-preference-driven&source=docs&viewMode=story" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-theme-toggle--user-preference-driven&source=docs)

## Properties

| Attribute | Property | Description                                                                   |
| --------- | -------- | ----------------------------------------------------------------------------- |
| mode      | mode     | A string to set the default mode of the theme toggle. The default is `light`. |

The following example shows setting the `dark` mode as the default.

```html
<mgt-theme-toggle mode="dark"></mgt-theme-toggle>
```

## Custom CSS variables

The theme toggle component does not have custom CSS variables.

## Events

| Event             | When is it emitted                                    | Custom data                                                  | Cancelable | Bubbles | Works with custom template |
| ----------------- | ----------------------------------------------------- | ------------------------------------------------------------ | :--------: | :-----: | :------------------------: |
| `darkmodechanged` | Fires when the dark mode is fired by the user action. | `boolean` value. `true` if it is dark mode otherwise `false` |     No     |   No    |             No             |

For more information about handling events, see [events](../customize-components/events.md).

## Templates

The theme toggle component does not have custom templates.

## Microsoft Graph permissions

The theme toggle component does not need any Microsoft Graph permissions to work.

## Authentication

The theme toggle component does not need authentication to work.

## Cache

The theme toggle component does not cache any data.

## Localization

The control exposes the following variables that can be localized. For details about how to set up localization, see [Localizing components](../customize-components/localization.md).

| String name | Default value  |
| ----------- | -------------- |
| label       | `Color mode: ` |
| on          | `Dark`         |
| off         | `Light`        |
