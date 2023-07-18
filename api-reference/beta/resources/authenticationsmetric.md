---
title: "authenticationsMetric resource type"
description: "Insights for authentications for a specific period."
author: "kingjuli"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
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
|[List dailyAuthenticationsMetrics](../api/dailyuserinsightmetricsroot-list-authentications.md)|Daily [authenticationsMetric](../resources/authenticationsmetric.md) collection|Get a list of the daily [authenticationsMetric](../resources/authenticationsmetric.md) objects and their properties.|
|[List monthlyAuthenticationsMetrics](../api/monthlyuserinsightmetricsroot-list-authentications.md)|Monthly [authenticationsMetric](../resources/authenticationsmetric.md) collection|Get a list of the monthly [authenticationsMetric](../resources/authenticationsmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| `id`            | `string`     | Identifier for the user insight.                                    |
| `factDate`      | `Edm.Date`   | The date of the user insight.                                       |
| `attemptsCount` | `Edm.Int64`  | Number of authentication requests made. (Filterable)                |
| `successCount`  | `Edm.Int64`  | Number of successful authentication requests. (Filterable)          |
| `os`            | `Edm.String` | The device plaform that the customers used. (Filterable)            |
| `country`       | `Edm.String` | The source country of the customers who authenticated. (Filterable) |
| `appId`         | `Edm.String` | The app id. (Filterable)                                            |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

