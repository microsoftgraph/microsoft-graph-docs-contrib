---
title: "aiInteractionHistory resource type"
description: "Represents a list of messages exchanged involving AI"
ms.date: 11/15/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
toc.title: "AI interaction history"
---

# aiInteractionHistory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a list of messages exchanged involving AI.

## Methods
|  Method  | Return Type  | Description | 
|:---------|:-------------|:------------|
|[List all enterprise interactions](../api/aiinteractionhistory-getallenterpriseinteractions.md) | [aiinteraction](aiinteraction.md) collection | Get the list of interactions between the user and the AI.|
	
## Properties
| Property      | Type     | Description |
|:--------------|:---------|:------------|
| interactions  | [aiInteraction](../resources/aiinteraction.md) collection| The list of AI interactions. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.aiInteractionHistory"
}-->

```json
{
  "interactions": [{"@odata.type": "microsoft.graph.aiinteraction"}],
}
```