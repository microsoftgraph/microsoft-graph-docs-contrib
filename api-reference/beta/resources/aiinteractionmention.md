---
title: "aiInteractionMention resource type"
description: "Represents a mention of an entity in an AI interaction."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
toc.title: "AI interaction mention"
---

# aiInteractionMention resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mention of an entity in an AI interaction.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| mentioned | [aiInteractionMentionedIdentitySet](../resources/aiinteractionmentionedidentityset.md) | The entity mentioned in the message. |
| mentionId | Int32 | The identifier for the mention. |
| mentionText | String | The text mentioned in the message. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.aiInteractionMention"
}-->

```json
{
  "mentioned": {"@odata.type": "microsoft.graph.AiInteractionMentionedIdentitySet"},
  "mentionId": "Int32",
  "mentionText": "String"
}
```
