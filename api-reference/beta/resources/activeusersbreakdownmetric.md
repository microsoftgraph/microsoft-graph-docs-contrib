---
title: "activeUsersBreakdownMetric resource type"
description: "Insights of the total users in the tenant over time."
author: "kingjuli"
ms.localizationpriority: medium
ms.prod: "user-insights"
doc_type: resourcePageType
---

# activeUsersBreakdownMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Insights for users who were active for a specific period. This is calculated as count of all users who made at least one authentication request in that period.

> **_NOTE:_**
> A user may be counted more that once if they use multiple device platforms or application. This shall be communicated to the customer.
> Because of this, if you combine all counts in this entity, it should **NOT** tally with the sum in the summary entity above.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dailyActiveUsersBreakdownMetric](../api/dailyuserinsightmetricsroot-list-activeusersbreakdown.md)|[dailyActiveUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection|Get a list of the daily [activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) objects and their properties.|
|[List monthlyActiveUsersBreakdownMetric](../api/monthlyuserinsightmetricsroot-list-activeusersbreakdown.md)|[monthlyActiveUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection|Get a list of the daily [activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| `appId`    | `String` | Application id the users authenticated to.              
| `appName`  | `Edm.String` | Application name the users authenticated to.            
| `count`    | `Edm.Int64`  | Number of users.                                        
| `factDate` | `Edm.Date`   | Day of the insight.                                     
| `os`       | `Edm.String` | The device plaform that the customers used. (Filterable)

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.activeUsersBreakdownMetric",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.activeUsersBreakdownMetric",
  "id": "String (identifier)",
  "factDate": "Date",
  "count": "Integer",
  "appId": "String",
  "appName": "String",
  "os": "String"
}
```

