---
title: "Chat List component in Microsoft Graph Toolkit"
description: "The Chat List component enables user to view and select chat threads."
ms.localizationpriority: medium
author: seekdavidlee
---

# Chat list component in Microsoft Graph Toolkit

> [!IMPORTANT]
> This component is in preview and is subject to change. The use of these components in production applications is not supported.

> [!NOTE]
> This component is currently only available as a React component and doesn't have a web component equivalent.

> [!NOTE]
> This feature takes advantage of real-time endpoints, high-capacity APIs and is subject to the same billing model described in the [payment models and licensing requirements for Microsoft Teams APIs](/graph/teams-licenses).

The chat list component enables the user view and select chat threads. The component allows for rendering latest chat thread message. All data is stored in Microsoft Teams.

## Example

The following example displays a conversation using the `mgt-chat-list` component.

![A screenshot of a chat list component](./images/mgt-chat-list.png)

## Properties

| Attribute                         | Property            | Description                                                                                            |
| --------------------------------- | ------------------- | ------------------------------------------------------------------------------------------------------ |
| None                              | chatThreadsPerPage  | The number of chat threads to render initially and subsequent Load more clicks. Required.              |
| None                              | menuItems           | Array of `ChatListMenuItem` that can be passed into the component to render menu item(s). A `Mark all as read` menu item will be added. When clicked, this button will unbold all chat threads. |
| None                              | buttonItems         | Array of `ChatListButtonItem` that can be passed into the component to render button(s). |

## CSS custom properties

The `mgt-chat-list` component doesn't define CSS custom properties.

## Events

The following events are fired from the component.

| Event | When is it emitted | Custom data | Cancelable | Bubbles | Works with custom template
| ------|-------------------|--------------|:-----------:|:---------:|:---------------------------:|
| `onLoaded` | Fired when all chat threads are loaded. | No | No | No | No |
| `onUnselected` | Fired when user selects a different chat thread. | GraphChatThread | No | No | No |
| `onSelected` | Fired when user selects a chat thread. | `GraphChat` | No | No | No |
| `onMessageReceived` | Fired when a user chat message is receieved. | `ChatMessage` | No | No | No |
| `onAllMessagesRead` | Fired when user clicks on `Mark all as read`. | string array of chat id | No | No | No |

## Templates

The `mgt-chat-list` component doesn't offer templates to override.

## Microsoft Graph permissions

This control uses the following Microsoft Graph APIs and permissions.

| Configuration | Permission | API |
| - | - | - |
| User Id is inferred from logged in user. | Chat.Read, Chat.ReadWrite, Chat.ReadBasic | [/users/{userId}/chats/getAllmessages](/graph/teams-changenotifications-chatmessage#subscribe-to-changes-at-the-user-level), [/me/chats](/graph/api/chat-list) |

## Authentication

The `mgt-chat-list` component uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Cache

The `mgt-chat-list` component caches chat messages and related metadata.

## Localization

The `mgt-chat-list` component doesn't expose any localization variables.

## Known issues

The `mgt-chat-list` component does not have any known issues.
