---
title: "callAiInsightViewPoint resource type"
description: "Represents user-specific properties of a callAiInsight."
author: "Anjali-Patle"
ms.date: 04/29/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
toc.title: "Call AI insight viewpoint"
---

# callAiInsightViewPoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents user-specific properties of a [call AI insight](../resources/callaiinsight.md). These properties might differ based on who calls the API.

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
  "mentionEvents": [{"@odata.type": "microsoft.graph.mentionEvent"}]
}
```

