---
title: "aiInteractionContext resource type"
description: "Represents all contexts associated with an interaction."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
toc.title: "AI interaction context"
---

# aiInteractionContext resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents all contexts associated with an interaction.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| contextReference | String | The full file URL where the interaction happened. |
| contextType | String | The type of the file. |
| displayName | String | The name of the file. |

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
  "contextType": "String",
  "displayName": "String"
}
```
