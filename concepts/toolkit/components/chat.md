---
title: "Chat component in Microsoft Graph Toolkit"
description: "The Chat component enables the user to have full 1:1 or group conversations. It works with any conversation happening in Microsoft Teams."
ms.localizationpriority: medium
author: sebastienlevert
---

# Chat component in Microsoft Graph Toolkit

[!IMPORTANT] This component is in Preview and is subject to change. The use of these components in production applications is not supported.

[!NOTE] This component is only available as a React component but this is subject to change.

The chat component enables the user to have full 1:1 or group conversations. It works with any conversation happening in Microsoft Teams.

## Properties

| Attribute                         | Property         | Description                                                                                            |
| --------------------------------- | ---------------- | ------------------------------------------------------------------------------------------------------ |
| chat-id                         | chatId         | A string ID to set the 1:1 or group conversation to render. Required. |

The following example shows a conversation with ID _19:25fdc88d202440b78e9229773cbb1713@thread.v2_.

```tsx
<Chat chatId={'19:25fdc88d202440b78e9229773cbb1713@thread.v2'} />
```

## CSS custom properties

The `mgt-chat` component does not define CSS custom properties.

## Events

The `mgt-chat` component doesn't offer any events.

## Templates

The `mgt-chat` component doesn't offer any template to override.

## Microsoft Graph permissions

This control uses the following Microsoft Graph APIs and permissions.

| Configuration | Permission | API |
| - | - | - |
| `chatId` is set | Chat.ReadBasic, Chat.Read, ChatMessage.Read, Chat.ReadWrite, ChatMember.ReadWrite | [/chats/{id}/messages](https://learn.microsoft.com/graph/api/chat-list-messages?view=graph-rest-1.0&tabs=http), [/chats/{id}/messages](https://learn.microsoft.com/graph/api/chat-post-messages?view=graph-rest-1.0&tabs=http), [/chats/{id}/messages/{messageId}](https://learn.microsoft.com/graph/api/chatmessage-update?view=graph-rest-1.0&tabs=http), [/me/chats/{id}/messages/{messageId}/softDelete](https://learn.microsoft.com/graph/api/chatmessage-softdelete?view=graph-rest-1.0&tabs=http), [/chats/{id}/members/{membershipId}](https://learn.microsoft.com/graph/api/chat-delete-members?view=graph-rest-1.0&tabs=http), [/chats/{id}/members](https://learn.microsoft.com/graph/api/chat-post-members?view=graph-rest-1.0&tabs=http), [/chats/{id}/messages/{messageId}/hostedContents/{hostedContentId}](https://learn.microsoft.com/graph/api/chatmessagehostedcontent-get?view=graph-rest-1.0&tabs=http), [/chats/{id}](https://learn.microsoft.com/graph/api/chat-patch?view=graph-rest-1.0&tabs=http) |

## Authentication

The `mgt-chat` component uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Cache

The `mgt-chat` component caches chat messages and related metadata data.

### Considerations & Trade offs

The caching strategy aims to reduce the costs of using the Chat component for customers using Premium APIs. As customers are billed per message loaded or received via [change notification](/concepts/webhooks.md) the caching strategy aims to reduce the number of times a given message is loaded for a given user on a given browser + device.

The Chat component utilizes a lazy load on scroll approach to reduce the volume of data fetched from the server at present. As this strategy uses client side view height offsets to determine if more data should be loaded the number of messages fetched from the server on initial load is non-deterministic and is influenced by the render height of each message returned from the server and the effective height of the Chat component. However initial testing indicates a range of 10 - 20 messages are fetched on initial load.

Currently the `/chats/{id}/messages` API does not provide a delta query to allow for only fetching change in the messages collection for a given conversion. An analog can be provided by tracking the maximum observed value of the `lastModifiedDateTime` property of any received messages and using this to compose a `$filter` query to load messages on a subsequent page load, e.g. `$filter=lastModifiedDateTime gt ${maxLastModified}&$orderby=createdDateTime DESC`. Providing an actual delta query while reducing some complexity aspects on the client actually increases the likelihood of double loading of messages due to the Chat client application receiving rich change messages over the Web Socket communication channel while still accumulating these changes on the delta query. Making use of regular change notifications and a delta query, while simplifying the loading new messages story, would increase the time for a user to receive a message in the Chat component, and greatly increase the rate of calls for the Chat component, likely causing throttling limits to be hit very quickly.

When a user is returning to a previously cached conversation all messages satisfying the pseudo delta query will be loaded and added to the cached and rendered data. This does have the downside of potentially loading an arbitrarily large number of messages in this scenario. This volume of messages is potentially far greater than the number that might be loaded should the cache have been invalidated requiring the user to scroll up to load additional messages. However failing to backtrack until all messages in the pseudo delta query are loaded could result in a user not seeing messages, which would be damaging to user confidence and trust.

In setting the cache expiry there are tradeoffs between; avoiding loading messages more than once, avoiding loading large volumes of messages when returning to a conversation, and the storage volume constraints imposed by the browser itself (although [research](https://web.dev/persistent-storage/) show this to be a lesser and unlikely constraint). Currently Microsoft Graph Toolkit uses a default of 1 hour for caching data. For conversation data it is proposed that chat messages are cached by default for a 5 day period after the last cache write time.

Developers will be able to reconfigure the cache expiry period in their own applications. 

## Localization

The `mgt-chat` component doesn't expose any localization variables.