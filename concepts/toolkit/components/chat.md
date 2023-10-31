---
title: "Chat component in Microsoft Graph Toolkit"
description: "The Chat component enables the user to have full 1:1 or group conversations. It works with any conversation happening in Microsoft Teams."
ms.localizationpriority: medium
author: sebastienlevert
---

# Chat component in Microsoft Graph Toolkit

> [!IMPORTANT]
> This component is in Preview and is subject to change. The use of these components in production applications is not supported.

> [!NOTE]
> This component is currently only available as a React component and doesn't have a web component equivalent.

The chat component enables the user to have full 1:1 or group conversations. It works with any conversation happening in Microsoft Teams. This component doesn't support Channel conversations.

## Example

The following example displays a file using the `mgt-chat` component.

<iframe src="https://codesandbox.io/embed/mgt-chat-zh4njl?fontsize=12&hidenavigation=1&module=%2Fsrc%2FApp.tsx&theme=light" height="500"></iframe>

[Open this example in CodeSandbox](https://codesandbox.io/s/mgt-chat-zh4njl)

## Properties

| Attribute                         | Property         | Description                                                                                            |
| --------------------------------- | ---------------- | ------------------------------------------------------------------------------------------------------ |
| chat-id                         | chatId         | A string ID to set the 1:1 or group conversation to render. Required. |

```typescript
<Chat chatId="19:25fdc88d202440b78e9229773cbb1713@thread.v2" />
```

## CSS custom properties

The `mgt-chat` component doesn't define CSS custom properties.

## Events

The `mgt-chat` component doesn't offer any events.

## Templates

The `mgt-chat` component doesn't offer templates to override.

## Microsoft Graph permissions

This control uses the following Microsoft Graph APIs and permissions.

| Configuration | Permission | API |
| - | - | - |
| `chatId` is set | Chat.ReadBasic, Chat.Read, ChatMessage.Read, Chat.ReadWrite, ChatMember.ReadWrite | [/chats/{id}/messages](/graph/api/chat-list-messages), [/chats/{id}/messages](/graph/api/chat-post-messages), [/chats/{id}/messages/{messageId}](/graph/api/chatmessage-update), [/me/chats/{id}/messages/{messageId}/softDelete](/graph/api/chatmessage-softdelete), [/chats/{id}/members/{membershipId}](/graph/api/chat-delete-members), [/chats/{id}/members](/graph/api/chat-post-members), [/chats/{id}/messages/{messageId}/hostedContents/{hostedContentId}](/graph/api/chatmessagehostedcontent-get), [/chats/{id}](/graph/api/chat-patch) |

## Authentication

The `mgt-chat` component uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Cache

The `mgt-chat` component caches chat messages and related metadata.

## Localization

The `mgt-chat` component doesn't expose any localization variables.

## Known issues

- The `mgt-chat` component doesn't support the same `chatId` being used in multiple instances of the component, tabs or browsers.
