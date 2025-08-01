---
title: "aiInteractionHistory resource type"
description: "Represents a list of messages that are exchanged and involve AI."
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

Represents a list of messages that are exchanged and involve AI.

## Methods

|  Method       |  Return Type  | Description| 
|:---------------|:--------|:----------|
|[Get all enterprise interactions](../api/aiinteractionhistory-getallenterpriseinteractions.md) | [aiInteraction](aiinteraction.md) collection | Get all Microsoft 365 Copilot interaction data, including user prompts to Copilot and Copilot responses. |

## Properties
None.

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
  "@odata.type": "#microsoft.graph.aiInteractionHistory"
}
```
