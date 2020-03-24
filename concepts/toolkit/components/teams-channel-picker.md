---
title: "Teams-Channel-Picker component in the Microsoft Graph Toolkit"
description: "You can use the mgt-teams-channel-picker to search for channels and teams associated with the user from the Micrsoft Graph."
localization_priority: Normal
author: vogtn
---

# Teams-Channel-Picker component

You can use the `mgt-teams-channel-picker` to search for channels and teams associated with the user from the Micrsoft Graph. The component will load all Teams the user has joined, and each channel associated to those teams. 

## Example

The following example shows the `mgt-teams-channel-picker` component. Start searching for a channel or Team to see the results render.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-teams-channel-picker--teams-channel-picker&source=docs" height="450"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-teams-channel-picker--teams-channel-picker&source=docs)


## Selected Channel and Team

The selected channel section of the component renders the channel of the user's choice. Below is the method to manually set a `selectedChannel` through `selectChannelById()`. 

![mgt-teams-channel-picker](./images/selected-channel.png)

- `selectChannelsById()` accepts an array of Microsoft graph [Channel.id](https://docs.microsoft.com/graph/api/resources/users?view=graph-rest-1.0) to find associated Team and Channel details for that selection. The control currently allows for one selection or Channel per component:

    ```javascript
    // channelId = Microsoft Graph Channel, unique id property
    document.querySelector('mgt-teams-channel-picker').selectChannelsById.push([channelId]);
    ```

**Note:** The provided channel (and subsequent id) must belong to a team that the authenticated user has joined. 

## CSS custom properties

The `mgt-teams-channel-picker` component defines the following CSS custom properties.

```css
mgt-teams-channel-picker {
    --input-border: 2px rgba(255, 255, 255, 0.5) solid; /* sets all input area border */

      /* OR individual input border sides */
    --input-border-bottom: 2px rgba(255, 255, 255, 0.5) solid;
    --input-border-right: 2px rgba(255, 255, 255, 0.5) solid;
    --input-border-left: 2px rgba(255, 255, 255, 0.5) solid;
    --input-border-top: 2px rgba(255, 255, 255, 0.5) solid;

    --input-background-color: #1f1f1f; /* input area background color */
    --input-hover-color: #008394;
    --input-focus-color: #0f78d4;

    --selection-background-color: #1f1f1f;
    --selection-hover-color: #333d47;
    --font-color: white;
    --arrow-fill: #ffffff;
    --placeholder-focus-color: rgba(255, 255, 255, 0.8);

}
```

## Templates

 `mgt-teams-channel-picker` supports several [templates](../templates.md) that you can use to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type | Data context | Description |
| --- | --- | --- |
| loading | null: no data | The template used to render the state of picker while request to graph is being made. |
| error | null: no data| The template used if user search returns no users. |


The following examples shows how to use the `error` template.

```html
<mgt-teams-channel-picker>
  <template data-type="error">
    <p>Sorry, no Teams or Channels were found</p>
  </template>
</mgt-teams-channel-picker>
```

## Microsoft Graph permissions

This component uses the following Microsoft Graph APIs and permissions.

| API                                                                                                              | Permission  |
| ---------------------------------------------------------------------------------------------------------------- | ----------- |
| [/me/joinedTeams](/graph/api/user-list-joinedteams?view=graph-rest-1.0)                    | User.Read.All        |
| [/teams/${id}/channels](/graph/api/channel-list?view=graph-rest-1.0) | Group.Read.All        |

## Authentication

The control uses the global authentication provider described in the [authentication documentation](./../providers.md).
