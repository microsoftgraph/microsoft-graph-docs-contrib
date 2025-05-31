---
title: "aiUser resource type"
description: "Represents an AI user or agent."
ms.date: 5/4/2025
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
toc.title: "AI user"
---

# aiUser resource type

Namespace: microsoft.graph

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
