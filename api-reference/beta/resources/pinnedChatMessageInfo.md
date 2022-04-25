---
title: "pinnedChatMessageInfo resource type"
description: "Represents an individual pinned message in a channel or chat entity.
author: "sumanac"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# pinnedChatMessageInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual pinned message in a [channel](channel.md) or [chat](chat.md) entity.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|**Chat messages**| | |
|[List pinned messages in chat](../api/chat-list-pinnedMessages.md)  | [pinnedChatMessageInfo](../resources/pinnedChatMessageInfo.md) | List pinned messages in a chat. |
|[Pin a message in chat](../api/pinnedmessage-update.md)  | [pinnedChatMessageInfo](../resources/pinnedChatMessageInfo.md) | Pin a chat message in a chat. |
|[Unpin a messages in chat](../api/pinnedmessage-delete.md)| None | Unpin a chat message in a chat.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| id| String| Read-only. ID of the [chatMessage](../resources/chatmessage.md). |

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
| message | [chatMessage](../resources/chatmessage.md) | Represents detail of chat message that is pinned.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.pinnedChatMessageInfo",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.pinnedChatMessageInfo",
  "id": "String (identifier)"  
  }
}
```

## See also

- [chat](../resources/chat.md)
- [chatMessage](../resources/chatmessage.md)