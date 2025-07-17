---
title: "chatMessageReaction resource type"
description: "Represents a reaction to a chatMessage entity. "
ms.localizationpriority: medium
doc_type: resourcePageType
author: "RamjotSingh"
ms.subservice: "teams"
ms.date: 10/24/2024
---

# chatMessageReaction resource type

Namespace: microsoft.graph

Represents a reaction to a [chatMessage](chatmessage.md) entity. 

An entity of type `chatMessageReaction` is returned as part of the [Get channel message](../api/chatmessage-get.md) API, as a part of the [chatMessage](chatmessage.md) entity.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdDateTime|DateTimeOffset|The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|displayName|String|The name of the reaction.|
|reactionContentUrl|String|The hosted content URL for the custom reaction type. |
|reactionType|String|The reaction type. Supported values include Unicode characters, `custom`, and some backward-compatible reaction types, such as `like`, `angry`, `sad`, `laugh`, `heart`, and `surprised`. |
|user|[chatMessageReactionIdentitySet](chatmessagereactionidentityset.md)|The user who reacted to the message.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chatMessageReaction",
  "baseType": null
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "reactionContentUrl": "String",
  "reactionType": "String",
  "user": {"@odata.type": "microsoft.graph.chatMessageReactionIdentitySet"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chatMessageReaction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


