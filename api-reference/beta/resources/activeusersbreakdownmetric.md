---
title: "activeUsersBreakdownMetric resource type"
description: "Represents breakdown insights on user activity for apps registered in your tenant configured for Microsoft Entra External ID for customers, over a specified period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# activeUsersBreakdownMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents breakdown insights on user activity for apps registered in your tenant configured for Microsoft Entra External ID for customers, over a specified period. This value is calculated based on the total number of users who made at least one authentication request within a specified period. A user can be counted more that once if they use multiple device platforms or applications.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily activeUsersBreakdown](../api/dailyuserinsightmetricsroot-list-activeusersbreakdown.md)|[activeUsersBreakdown](../resources/activeusersbreakdownmetric.md) collection.|Get a list of the daily [activeUsersBreakdown](../resources/activeusersbreakdownmetric.md) objects and their properties.|
|[List monthly activeUsersBreakdown](../api/monthlyuserinsightmetricsroot-list-activeusersbreakdown.md)|[activeUsersBreakdown](../resources/activeusersbreakdownmetric.md) collection.|Get a list of the monthly [activeUsersBreakdown](../resources/activeusersbreakdownmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|Application ID the users authenticated to.|
|appName| String|Application name the users authenticated to.|
|count| Int64|Number of users.|
|factDate|Date| Day of the insight.|
|id|String|Unique identifier for the **activeUsersBreakdownMetric** object. Inherited from [entity](../resources/entity.md).|
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
  "appId": "String",
  "appName": "String",
  "count": "Int64",
  "factDate": "String (date)",
  "id": "String (identifier)",
  "os": "String"
}
```

