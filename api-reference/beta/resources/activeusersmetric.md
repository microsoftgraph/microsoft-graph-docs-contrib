---
title: "activeUsersMetric resource type"
description: "Represents insights on user activity for apps registered in your tenant configured for Microsoft Entra External ID for customers, over a specific period (daily or monthly)."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# activeUsersMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents insights on user activity for apps registered in your tenant configured for Microsoft Entra External ID for customers, over a specific period (daily or monthly). This value is calculated based on the total number of users who made at least one authentication request within a specific period. A user can be counted more that once if they use multiple device platforms or applications.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily activeUsers](../api/dailyuserinsightmetricsroot-list-activeusers.md)|[activeUsersMetric](../resources/activeusersmetric.md) collection.|Get a list of daily [active users](../resources/activeusersmetric.md) on apps registered in your tenant configured for Microsoft Entra External ID for customers.|
|[List monthly activeUsers](../api/monthlyuserinsightsmetricsroot-list-activeusers.md)|[activeUsersMetric](../resources/activeusersmetric.md) collection.|Get a list of monthly [active users](../resources/activeusersmetric.md) on apps registered in your tenant configured for Microsoft Entra External ID for customers.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int64|Number of users.|
|factDate|Date|Day of the insight.|
|id|String|Identifier for the user insight. Inherited from [entity](../resources/entity.md).|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.activeUsersMetric",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.activeUsersMetric",
  "count": "Int64",
  "factDate": "String (date)",
  "id": "String (identifier)"
}
```
