---
title: "userCountMetric resource type"
description: "Insights of the total users in the tenant over time."
author: "kingjuli"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# userCountMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Insights of the total users in the tenant over time.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userCountMetrics](../api/dailyuserinsightmetricsroot-list-usercount.md)| [userCountMetric](../resources/usercountmetric.md) collection|Get a list of the daily [userCountMetric](../resources/usercountmetric.md) objects and their properties.|
|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| `id`       | `Edm.String` | Identifier for the insight.             | Yes | Yes      | Yes      |
| `factDate` | `Edm.Date`   | Date of the insight.                    | No  | Yes      | Yes      |
| `count`    | `string`     | Total users in the tenant at over time. | No  | Yes      | Yes      |
## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

