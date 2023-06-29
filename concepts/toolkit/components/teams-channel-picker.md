---
title: "Microsoft Teams Channel Picker component in Microsoft Graph Toolkit"
description: "You can use mgt-teams-channel-picker to search for channels and teams associated with the user from Microsoft Graph."
ms.localizationpriority: medium
author: sebastienlevert
---

# Microsoft Teams Channel Picker component in Microsoft Graph Toolkit

You can use the `mgt-teams-channel-picker` component to enable searches for Microsoft Teams channels associated with a user. The component can search all teams the user has joined, and each channel in those teams.

## Example

The following example shows the `mgt-teams-channel-picker` component. Start searching for a channel or team to see the results render.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-teams-channel-picker--teams-channel-picker&source=docs" height="450"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-teams-channel-picker--teams-channel-picker&source=docs)

## Getting the selected channel

Use the `selectedItem` property to retrieve the currently selected channel and parent team. This value will be null if no channel has been selected. `selectedItem` contains two properties: `channel` ([MicrosoftGraph.Channel](/graph/api/resources/channel)) and `team` ([MicrosoftGraph.Team](/graph/api/resources/team)).

```javascript
const channelPicker = document.querySelector("mgt-teams-channel-picker");
console.log(channelPicker.selectedItem.channel);
console.log(channelPicker.selectedItem.team);
```

## Selecting a channel

Use the `selectChannelById(channelId: string)` method to programmatically select a channel.

> **Note:** the Teams channel picker only supports single channel selection.

```javascript
const channelPicker = document.querySelector("mgt-teams-channel-picker");
const channelId = "some-channel-id";
channelPicker.selectChannelById(channelId);
```

> **Note:** The provided channel (and subsequent ID) must belong to a team that the authenticated user has joined.

## CSS custom properties

The `mgt-teams-channel-picker` component defines the following CSS custom properties.

```html
<mgt-teams-channel-picker
  class="teams-channel-picker"
  person-query="me"
></mgt-teams-channel-picker>
```

```css
.teams-channel-picker {
  --channel-picker-input-border: 2px rgba(255, 255, 255, 0.5) solid; /* sets all input area border */

  --channel-picker-input-background-color: #1f1f1f; /* input area background color */
  --channel-picker-input-background-color-hover: #008394; /* input area border hover color */
  --channel-picker-input-background-color-focus: #0f78d4; /* input area border focus color */

  --channel-picker-dropdown-background-color: brown; /* channel background color */
  --channel-picker-dropdown-item-text-color: #fff;
  --channel-picker-dropdown-item-background-color-hover: #333d47; /* channel or team hover background */
  --channel-picker-dropdown-item-text-color-selected: #0f78d4; /* selected channel background color */

  --channel-picker-color: white; /* input area border focus color */
  --channel-picker-arrow-fill: #ffffff;
  --channel-picker-input-placeholder-text-color: #f1f1f1; /* placeholder text color */
  --channel-picker-input-placeholder-text-color-hover: rgba(
    255,
    255,
    255,
    0.8
  ); /* place holder text focus color */
  --channel-picker-input-placeholder-text-color-focus: rgba(
    255,
    255,
    255,
    0.8
  ); /* place holder text focus color */

  --channel-picker-search-icon-color: yellow;
  --channel-picker-close-icon-color: yellow;
  --channel-picker-down-chevron-color: yellow;
  --channel-picker-up-chevron-color: yellow;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Events

| Event              | When is it emitted                                               | Custom data                                                                                                                       | Cancelable | Bubbles | Works with custom template |
| ------------------ | ---------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | :--------: | :-----: | :------------------------: |
| `selectionChanged` | Fires when the user makes a change in the selection of a channel | The currently selected item as `{ channel: `[channel](/graph/api/resources/channel)`, team: `[team](/graph/api/resources/team)`}` |     No     |   No    |            Yes             |

For more information about handling events, see [events](../customize-components/events.md).

## Templates

`mgt-teams-channel-picker` supports several [templates](../customize-components/templates.md) that you can use to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type | Data context  | Description                                                                                                  |
| --------- | ------------- | ------------------------------------------------------------------------------------------------------------ |
| loading   | null: no data | The template used to render the state of the picker while making a request to Microsoft Graph is being made. |
| error     | null: no data | The template used if a user search returns no users.                                                         |

The following example shows how to use the `error` template.

```html
<mgt-teams-channel-picker>
  <template data-type="error">
    <p>Sorry, no Teams or Channels were found</p>
  </template>
</mgt-teams-channel-picker>
```

## Microsoft Graph permissions

This component uses the following Microsoft Graph APIs and permissions by default.

| API                                                 | Permission            |
| --------------------------------------------------- | --------------------- |
| [/me/joinedTeams](/graph/api/user-list-joinedteams) | Team.ReadBasic.All    |
| [/teams/${id}/channels](/graph/api/channel-list)    | Channel.ReadBasic.All |

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Cache

The `mgt-teams-channel-picker` component doesn't cache any data.

## Extend for more control

For more complex scenarios or a truly custom UX, this component exposes several `protected render*` methods for override in component extensions:

| Method                | Description                                             |
| --------------------- | ------------------------------------------------------- |
| renderSelected        | Renders the selected team and channel in the input box. |
| renderInput           | Renders the input box.                                  |
| renderDropdown        | Renders the dropdown.                                   |
| renderDropdownList    | Renders the items in the dropdown recursively.          |
| renderItem            | Renders a team or a channel in the dropdown list.       |
| renderHighlightedText | Renders the channel text, highlighting the input query. |
| renderLoading         | Renders the loading dropdown state.                     |
| renderError           | Renders the dropdown error state.                       |

## Localization

The control exposes the following variables that can be localized. For details about how to set up localization, see [Localizing components](../customize-components/localization.md).

| String name          | Default value                 |
| -------------------- | ----------------------------- |
| inputPlaceholderText | `Select a channel`            |
| noResultsFound       | `We didn't find any matches.` |
| loadingMessage       | `Loading...`                  |
