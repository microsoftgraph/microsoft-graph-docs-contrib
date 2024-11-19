---
title: "aiInteractionType resource type"
description: "Represents an AI interaction type."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
---

# aiInteractionType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the interaction type.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| userPrompt | String | User message/prompt |
| aiResponse | String | Copilot Response |
| unknownFutureValue | String | Unknown future value |

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.aiInteractionType"
}-->

```json
{
  "userPrompt": "Enum",
  "aiResponse": "Enum",
  "unknownFutureValue": "Enum"
}
```