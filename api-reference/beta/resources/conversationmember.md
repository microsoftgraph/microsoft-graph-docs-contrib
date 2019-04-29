---
title: "conversationMember resource type"
description: "Represents an entity that is a member of a conversation."
localization_priority: Priority
author: "nibeuali"
ms.prod: "microsoft-teams"
---

# conversationmember resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual member within a [chat](chat.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List Chat members](../api/chatmembership-list.md) | [conversationmember](conversationmember.md) collection | Get the list of all root messages in a channel.|
|[Get Chat member](../api/chatmembership-get.md) | [conversationmember](conversationmember.md) | Get a single root message from a channel.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique ID of the member.|
|displayName| string | The display name of the member |


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "deleted",
    "deletedDateTime",
    "attachments",
    "importance",
    "reactions",
    "mentions",
    "subject",
    "summary"
  ],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.chatMessage"
}-->

```json
{
  "id": "string (identifier)",
  "displayName" : "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "chat message resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
