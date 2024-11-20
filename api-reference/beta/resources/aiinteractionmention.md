---
title: "aiInteractionMention resource type"
description: "Represents a mention of an entity in an interaction."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
---

# aiInteractionMention resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mention of an entity in an interaction.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| mentionId | Int32 | The identifier for the mention. |
| mentionText | String | The text mentioned in the message. |
| mentioned | [aiInteractionMentionedIdentitySet](../resources/aiInteractionMentionedIdentitySet.md) | The entity mentioned in the message. |

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
  "mentionId": "Int32",
  "mentionText": "String",
  "mentioned": {"@odata.type": "microsoft.graph.AiInteractionMentionedIdentitySet"}
}
```
