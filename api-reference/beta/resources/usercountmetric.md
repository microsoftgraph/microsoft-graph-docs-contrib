---
title: "userCountMetric resource type"
description: "Insights of the total users in the tenant over time."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userCountMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Insights of the total users in the tenant over time.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userCountMetrics](../api/dailyuserinsightmetricsroot-list-usercount.md)| [userCountMetric](../resources/usercountmetric.md) collection.|Get a list of the daily [userCountMetric](../resources/usercountmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| id|String| Identifier for the insight.|
| factDate|Date| Date of the insight.|
| count|String| Total users in the tenant at over time.|
## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userCountMetric",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userCountMetric",
  "id": "String (identifier)",
  "factDate": "Date",
  "count": "Integer"
}
```

