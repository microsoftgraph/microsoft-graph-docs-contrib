---
title: "aadUserConversationMember resource type"
description: "Represents an Azure Active Directory user in a chat or channel."
localization_priority: Priority
author: "clearab"
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# aadUserConversationMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure Active Directory user in a [chat](chat.md) or [channel](channel.md). This type inherits from [conversationMember](conversationmember.md).

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
|[Add chat member](../api/chat-post-members.md) | No Content and a Location header | Add a user to the chat.| 
|[Delete chat member](../api/chat-delete-members.md) | No content | Delete a user from the chat.| 

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|id| String | Read-only. Unique ID of the user.|
|displayName| String | The display name of the user. |
|roles| String collection | The roles for that user. |
|userId| String | The guid of the user. |
|email| String  | The email address of the user. |
|tenantId| string  | TenantId which the AAD User belongs to. |
|visibleHistoryStartDateTime| DateTimeOffset  | The timestamp denoting how far back a conversation's history is shared with the conversation member. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.aadUserConversationMember",
  "baseType": "microsoft.graph.conversationMember",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.aadUserConversationMember",
  "id": "String (identifier)",
  "roles": [
    "String"
  ],
  "displayName": "String",
  "visibleHistoryStartDateTime": "String (timestamp)",
  "userId": "String",
  "email": "String",
  "tenantId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "aadUserConversationMember",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
