---
title: "aiInteractionHistory resource type"
description: "Represents a list of messages exchanged involving AI."
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

|  Method       |  Return Type  | Description| 
|:---------------|:--------|:----------|
|[List all enterprise interactions](../api/aiinteractionhistory-getallenterpriseinteractions.md) | [aiinteraction](aiinteraction.md) collection | Get all Microsoft 365 Copilot interactions data, including user prompts to Copilot and the Copilot responses. |

## Properties
None.

## Relationships
| Relationship | Type     | Description |
|:--------------|:---------|:------------|
| interactions  | [aiInteraction](../resources/aiinteraction.md) collection| The list of AI interactions. |


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
