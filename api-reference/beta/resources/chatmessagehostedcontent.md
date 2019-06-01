---
title: "chatMessageHostedContent resource type"
description: "A content hosted in a chat message"
localization_priority: Normal
author: "Ramjot.Singh"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# chatMessageHostedContent resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents content hosted in a chat message e.g. images, code snippets.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get chatMessageHostedContent](../api/chatmessagehostedcontent-get.md) | [chatMessageHostedContent](chatmessagehostedcontent.md) | Read properties and relationships of chatMessageHostedContent object. |
| [Delete](../api/chatmessagehostedcontent-delete.md) | None | Delete chatMessageHostedContent object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chatMessageHostedContent",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chatMessageHostedContent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->