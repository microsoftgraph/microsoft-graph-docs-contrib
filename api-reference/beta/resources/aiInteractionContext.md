---
title: "aiInteractionContext resource type"
description: "Represents an AI Interaction context."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
---

# aiInteractionContext resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents all contexts associated with interaction.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| contextReference | String | The full file URL where the interaction happened. |
| displayName | String | The name of the file. |
| contextType | String | The type of the file. |

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.aiInteractionContext"
}-->

```json
{
  "contextReference": "String",
  "displayName": "String",
  "contextType": "String"
}
```
