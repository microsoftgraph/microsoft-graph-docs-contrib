---
title: "aiUser resource type"
description: "Represents AI generated user or agent."
ms.date: 11/15/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
toc.title: "AI user"
---

# aiUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a AI generated user or agent. 

## Properties

| Property            | Type   | Description |
|:--------------------|:-------|:------------|
| id                  | String | The unique identifier for the AI user. |
| interactionHistory  | [aiInteractionHistory](../resources/aiinteractionhistory.md) collection | The history of interactions between an AI agent and users. |

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.aiUser"
}-->

```json
{
  "id": "String",
  "interactionHistory": [{"@odata.type": "microsoft.graph.aiinteractionhistory"}],
}
```