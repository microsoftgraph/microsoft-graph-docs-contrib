---
title: "aiInteractionType resource type"
description: "Represents an AI interaction type."
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
---

# aiInteractionType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the interaction type. Can be UserPrompt, AiResponse or UnknownFutureValue.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| userPrompt | Enum | User message/prompt |
| aiResponse | Enum | Copilot Response |
| unknownFutureValue | Enum | Unknown future value |

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