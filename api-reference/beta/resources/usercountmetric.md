---
title: "userCountMetric resource type"
description: "Represents insights for the total users on apps registered in your Microsoft Entra External ID for customers tenant for a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userCountMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents insights for the total users on apps registered in your Microsoft Entra External ID for customers tenant for a specific period.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userCountMetrics](../api/dailyuserinsightmetricsroot-list-usercount.md)| [userCountMetric](../resources/usercountmetric.md) collection.|Get a list of the daily [userCountMetric](../resources/usercountmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| id|String| Identifier for the insight. Inherited from [entity](../resources/entity.md).|
| factDate|Date| Date of the insight.|
| count|Int64| Total users in the tenant at over time.|

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
  "count": "Int64",
  "factDate": "String (date)",
  "id": "String (identifier)",
}
```
