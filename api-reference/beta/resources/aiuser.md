---
title: "aiUser resource type"
description: "Represents an AI user or agent."
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

Represents an AI user or agent. 

## Methods
None.

## Properties
| Property            | Type   | Description |
|:--------------------|:-------|:------------|
| id                  | String | The unique identifier for the AI user. |
	
## Relationships
| Relationship | Type | Description |
|:-------------|:-----|:------------|
| interactionHistory  | [aiInteractionHistory](../resources/aiinteractionhistory.md) | The history of interactions between AI agents and users. |
| onlineMeetings | [aiOnlineMeeting](../resources/aionlinemeeting.md) collection | Information about an online meeting, including AI insights. |

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
  "id": "String (identifier)"
}
```
