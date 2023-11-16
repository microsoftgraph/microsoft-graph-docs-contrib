---
title: "Search box component in the Microsoft Graph Toolkit"
description: "The Search box component is used to render a search input that can be connected to a search results component for building complex search scenarios"
ms.localizationpriority: medium
author: sebastienlevert
---

# Search box component in the Microsoft Graph Toolkit

[!INCLUDE [preview-disclaimer](./includes/preview-disclaimer.md)]

The Search box component renders an input control allowing searching for capabilities. This component is not connected to Microsoft Graph and should be used in collaboration with the [search results component](search-results.md).

## Example

The following example shows the use of the `mgt-search-box` component to enable users to type a query that would be sent to other components for rendering. You can use the code editor to see how [properties and attributes](#properties-and-attributes) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=preview-mgt-search-box--search-box&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/preview-mgt-search-box--search-box&source=docs)

## Properties and attributes

You can use several attributes to change the behavior of the component.

| Attribute      | Property      | Description                                                  |
| -------------- | ------------- | ------------------------------------------------------------ |
| search-term    | searchTerm    | Value of the search term.                                    |
| placeholder    | placeholder   | The placeholder rendered in the picker. Default is `Search`. |
| debounce-delay | debounceDelay | Debounce delay of the search input. Default is `300`.        |

## Events

| Event               | When is it emitted                    | Custom data | Cancelable | Bubbles | Works with custom template |
| ------------------- | ------------------------------------- | ----------- | :--------: | :-----: | :------------------------: |
| `searchTermChanged` | Fired when the search term is changed | `string`.   |     No     |   Yes   |             No             |

For more information about handling events, see [events](../customize-components/events.md).

## Localization

The control exposes the following variables that can be localized. For details about how to set up localization, see [Localizing components](../customize-components/localization.md).

| String name | Default value |
| ----------- | ------------- |
| placeholder | `Search`      |
| title       | `Search`      |
