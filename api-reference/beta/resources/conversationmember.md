---
title: "conversationMember resource type"
description: "Represents a user in a conversation."
localization_priority: Normal
author: "clearab"
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# conversationMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user in a [chat](chat.md) or a [channel](channel.md).
See also [aadUserConversationMember](aaduserconversationmember.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List Channel members](../api/channel-list-members.md) | [conversationMember](conversationmember.md) collection | Get the list of all users in the channel.|
|[Get Channel member](../api/channel-get-members.md) | [conversationMember](conversationmember.md) | Get a single user in the channel.|
|[Add Channel member](../api/channel-post-members.md) | [conversationMember](conversationmember.md)| Add a member to a channel.|
|[Update Channel member](../api/channel-update-members.md) | [conversationMember](conversationmember.md)| Update a member in the channel.|
|[Delete Channel member](../api/channel-delete-members.md) | No content | Delete a member from the channel.|
|[List Chat members](../api/chat-list-members.md) | [conversationMember](conversationmember.md) collection | Get the list of all users in the chat.|
|[Get Chat member](../api/chat-get-members.md) | [conversationMember](conversationmember.md) | Get a single user in the chat.|
|[Add chat member](../api/chat-post-members.md) | [conversationMember](conversationmember.md) | Add a user to the chat.| 
|[Delete chat member](../api/chat-delete-members.md) | No content | Delete a user from the chat.| 

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique ID of the user.|
|displayName| string | The display name of the user. |
|roles| string collection | The roles for that user. |
|visibleHistoryStartDateTime| DateTimeOffset | The timestamp denoting how far back a conversation's history is shared with the conversation member. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.conversationMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conversationMember",
  "id": "String (identifier)",
  "roles": [
    "String"
  ],
  "displayName": "String",
  "visibleHistoryStartDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conversationMember resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


