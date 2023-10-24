---
title: "authenticationsMetric resource type"
description: "Insights for authentications for a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# authenticationsMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Insights for authentications for a specific period.

> **_NOTE:_**
> If you combine all counts in this entity, it **SHOULD** tally with the sum in the summary entity above.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily authenticationsMetrics](../api/dailyuserinsightmetricsroot-list-authentications.md)|Daily [authenticationsMetric](../resources/authenticationsmetric.md) collection|Get a list of the daily [authenticationsMetric](../resources/authenticationsmetric.md) objects and their properties.|
|[List monthly authenticationsMetrics](../api/monthlyuserinsightmetricsroot-list-authentications.md)|Monthly [authenticationsMetric](../resources/authenticationsmetric.md) collection|Get a list of the monthly [authenticationsMetric](../resources/authenticationsmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| id | String | Identifier for the user insight.  |
| factDate | Date | The date of the user insight. |
| attemptsCount | Int64 | Number of authentication requests made. Supports `$filter` (`eq`). |
| successCount | Int64 | Number of successful authentication requests. Supports `$filter` (`eq`). |
| os | String | The device plaform that the customers used. Supports `$filter` (`eq`). |
| country | String | The source country of the customers who authenticated. Supports `$filter` (`eq`). |
| appId | String | The app id. Supports `$filter` (`eq`). |

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationsMetric",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationsMetric",
  "id": "String (identifier)",
  "factDate": "Date",
  "attemptsCount": "Integer",
  "successCount": "Integer",
  "os": "String",
  "country": "String",
  "appid": "String"
}
```

