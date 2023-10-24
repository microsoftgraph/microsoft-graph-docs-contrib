---
title: "activeUsersMetric resource type"
description: "Insights for users who were active for a specific period. This value is calculated as count of all users who made at least one authentication request in that period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# activeUsersMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Insights for users who were active for a specific period. This value is calculated as count of all users who made at least one authentication request in that period.

> **_NOTE:_**
> A user may be counted more that once if they use multiple device platforms or application.
> Please be aware that when you aggregate all the counts within this entity, the total will not match the sum in the summary entity above due to this.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily activeUsersMetrics](../api/dailyuserinsightmetricsroot-list-activeusers.md)|[daily activeUsersMetrics](../resources/activeusersmetric.md) collection.|Get a list of the daily [activeUsersMetric](../resources/activeusersmetric.md) objects and their properties.|
|[List monthly activeUsersMetrics](../api/monthlyuserinsightsmetricsroot-list-activeusers.md)|[monthly activeUsersMetric](../resources/activeusersmetric.md) collection.|Get a list of the monthly [activeUsersMetric](../resources/activeusersmetric.md) objects and their properties.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|ID|String|Identifier for the user insight.|
|factDate|Date|Day of the insight.|
|count|Int64|Number of users.|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
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

