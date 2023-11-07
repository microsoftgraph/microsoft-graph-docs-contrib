---
title: "activeUsersBreakdown resource type"
description: "Breakdown insights for users on apps registered in your Microsoft Entra External ID for customers tenant who were active for a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# activeUsersBreakdown resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Breakdown insights for users on apps registered in your Microsoft Entra External ID for customers tenant who were active for a specific period. This value is calculated as count of all users who made at least one authentication request in that period.
A user may be counted more that once if they use multiple device platforms or application.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily activeUsersBreakdown](../api/dailyuserinsightmetricsroot-list-activeusersbreakdown.md)|[activeUsersBreakdown](../resources/activeusersbreakdownmetric.md) collection.|Get a list of the daily [activeUsersBreakdown](../resources/activeusersbreakdownmetric.md) objects and their properties.|
|[List monthly activeUsersBreakdown](../api/monthlyuserinsightmetricsroot-list-activeusersbreakdown.md)|[activeUsersBreakdown](../resources/activeusersbreakdownmetric.md) collection.|Get a list of the monthly [activeUsersBreakdown](../resources/activeusersbreakdownmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|Application ID the users authenticated to.|
|appName| String|Application name the users authenticated to.
|count| Int64|Number of users.|
|factDate|Date| Day of the insight.|
|os| String|The platform for the device that the customers used. Supports `$filter` (`eq`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

