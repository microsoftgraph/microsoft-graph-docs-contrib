---
title: "userCount resource type"
description: "Insights for the total users on apps registered in your Microsoft Entra External ID for customers tenant for a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Insights for the total users on apps registered in your Microsoft Entra External ID for customers tenant for a specific period.

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
The following JSON representation shows the resource type.
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
