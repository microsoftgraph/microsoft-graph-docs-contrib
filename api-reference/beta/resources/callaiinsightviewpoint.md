---
title: "callAiInsightViewPoint resource type"
description: "Represents user-specific properties of a callAiInsight."
author: "Anjali-Patle"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# callAiInsightViewPoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents user-specific properties of a [call AI Insight](../resources/callaiInsight.md). These properties might change based on who the caller of the API is.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|mentionEvents|[mentionEvent](../resources/mentionevent.md) collection|The collection of AI-generated mention events.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callAiInsightViewPoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callAiInsightViewPoint",
  "mentionEvents": [
    {
      "@odata.type": "microsoft.graph.mentionEvent"
    }
  ]
}
```

