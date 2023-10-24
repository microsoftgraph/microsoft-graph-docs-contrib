---
title: "authenticationsMetric resource type"
description: "Insights on authentications for registered apps within your Microsoft Entra ID customer tenant during a specific timeframe
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# authenticationsMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

"Insights on authentications for registered apps within your Microsoft Entra ID customer tenant during a specific timeframe

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily authenticationsMetrics](../api/dailyuserinsightmetricsroot-list-authentications.md)|Daily [authenticationsMetric](../resources/authenticationsmetric.md) collection|Get a list of the daily [authenticationsMetric](../resources/authenticationsmetric.md) objects and their properties.|
|[List monthly authenticationsMetrics](../api/monthlyuserinsightmetricsroot-list-authentications.md)|Monthly [authenticationsMetric](../resources/authenticationsmetric.md) collection|Get a list of the monthly [authenticationsMetric](../resources/authenticationsmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| ID | String | Identifier for the user insight.  |
| factDate | Date | The date of the user insight. |
| attemptsCount | Int64 | Number of authentication requests made. Supports `$filter` (`eq`). |
| successCount | Int64 | Number of successful authentication requests. Supports `$filter` (`eq`). |
| os | String | The platform for the device that the customers used. Supports `$filter` (`eq`). |
| country | String | The country/region from which the customers authenticated. Supports `$filter` (`eq`). |
| appID | String | The appID. Supports `$filter` (`eq`). |

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

