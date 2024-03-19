---
title: "activeUsersBreakdownMetric resource type (deprecated)"
description: "Represents breakdown insights of daily and monthly user activity on apps registered in your tenant that is configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# activeUsersBreakdownMetric resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> The `activeUsersBreakdown` resource type and its associated methods is deprecated and will stop returning data on March 9, 2024. Use the [activeUsersMetric](../resources/activeusersmetric.md) resource and its associated methods instead.

Represents breakdown insights of daily and monthly user activity on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily activeUsersBreakdown](../api/dailyuserinsightmetricsroot-list-activeusersbreakdown.md)|[activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection|Get a list of daily [activeUsersBreakdown](../resources/activeusersbreakdownmetric.md) objects on apps registered in your tenant configured for Microsoft Entra External ID for customers.|
|[List monthly activeUsersBreakdown](../api/monthlyuserinsightmetricsroot-list-activeusersbreakdown.md)|[activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection|Get a list of monthly [activeUsersBreakdown](../resources/activeusersbreakdownmetric.md) objects on apps registered in your tenant configured for Microsoft Entra External ID for customers.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The ID of the Microsoft Entra application.|
|appName| String|Name of the application users authenticated to.|
|count| Int64|The total number of users who made at least one authentication request within the specified time period.|
|factDate|Date| The date of the insight.|
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

