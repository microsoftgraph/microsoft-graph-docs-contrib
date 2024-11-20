---
title: "aiInteractionMentionedIdentitySet resource type"
description: "Represents an entity mentioned in a message."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
toc.title: "AI interaction mentioned identity set"
---

# aiInteractionMentionedIdentitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity mentioned in a message.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| conversation | teamworkConversationIdentity | The conversation details. |
| tag | teamworkTagIdentity | The tag details. |

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.aiInteractionMentionedIdentitySet"
}-->

```json
{
  "conversation": "String",
  "tag": "String",
}
```
