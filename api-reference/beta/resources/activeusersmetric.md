---
title: "activeUsers resource type"
description: "Insights for users on apps registered in your Microsoft Entra External ID for customers tenant who were active for a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# activeUsersMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Insights for users on apps registered in your Microsoft Entra External ID for customers tenant who were active for a specific period. This value is calculated as count of all users who made at least one authentication request in that period.
A user may be counted more that once if they use multiple device platforms or application.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily activeUsers](../api/dailyuserinsightmetricsroot-list-activeusers.md)|[activeUsers](../resources/activeusersmetric.md) collection.|Get a list of the daily [activeUsers](../resources/activeusersmetric.md) objects and their properties.|
|[List monthly activeUsers](../api/monthlyuserinsightsmetricsroot-list-activeusers.md)|[activeUsers](../resources/activeusersmetric.md) collection.|Get a list of the monthly [activeUsersMetric](../resources/activeusersmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier for the user insight.|
|factDate|Date|Day of the insight.|
|count|Int64|Number of users.|

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
  "id": "String (identifier)",
  "factDate": "Date",
  "count": "Integer"
}
```
