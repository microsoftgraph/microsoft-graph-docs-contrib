---
title: "New Chat component in Microsoft Graph Toolkit"
description: "The New Chat component allows user to create new 1:1 or group conversations in Microsoft Teams."
ms.localizationpriority: medium
author: sebastienlevert
---

# New chat component in Microsoft Graph Toolkit

> [!IMPORTANT]
> This component is in Preview and is subject to change. The use of these components in production applications is not supported.

> [!NOTE]
> This component is only available as a React component but this is subject to change.

The new chat component allows user to create new 1:1 or group conversations in Microsoft Teams.

## Properties

| Attribute | Property | Description |
| - | - | - |
| mode | mode | Set to `oneOnOne`, `group` or `auto`. Default is `auto`. |

```tsx
<NewChat mode="group" />
```

## CSS custom properties

The `mgt-new-chat` component doesn't define CSS custom properties.

## Events

The following events are fired from the component.

Event | When is it emitted | Custom data | Cancelable | Bubbles | Works with custom template
------|-------------------|--------------|:-----------:|:---------:|:---------------------------:|
`onChatCreated` | Fired when a new chat thread is created. | The `chat` object that was created as a Microsoft Graph [chat](https://learn.microsoft.com/graph/api/resources/chat?view=graph-rest-1.0#json-representation). | No | No | No |
`onCancelClicked` | Fired when user cancels the chat thread creation. | None | No | No | No |

For more information about handling events, see [events](../customize-components/events.md).

## Templates

The `mgt-new-chat` component doesn't offer any template to override.

## Microsoft Graph permissions

This control uses the following Microsoft Graph APIs and permissions.

| Configuration | Permission | API |
| - | - | - |
| Default | Chat.Create, ChatMessage.Send | [/chats](https://learn.microsoft.com/graph/api/chat-post?view=graph-rest-1.0&tabs=http), [/chats/{id}/messages](https://learn.microsoft.com/graph/api/chat-post-messages?view=graph-rest-1.0&tabs=http) |

## Authentication

The tasks component uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Cache

The `mgt-new-chat` component doesn't cache any data.

## Localization

The `mgt-new-chat` component doesn't expose any localization variables.