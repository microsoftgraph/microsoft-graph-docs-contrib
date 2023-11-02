---
title: "inactiveUsersMetric resource type"
description: "Insights for users who were inactive for a specific period. This value is calculated as count of all users who have not made an authentication request in that period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# inactiveUsersMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This insight metric provides users who were inactive for a specific period. This value is calculated as count of all users who have not made an authentication request in that period.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dailyInactiveUsersMetric](../api/dailyinactiveusersmetricbase-list.md)|[inactiveUsersMetric](../resources/inactiveusersmetricbase.md) collection.|Get a list of the daily [inactiveUsersMetric](../resources/inactiveusersmetricbase.md) objects and their properties.|
|[List monthlyInactiveUsersMetric](../api/monthlyinactiveusersmetricbase-list.md)|[inactiveUsersMetric](../resources/inactiveusersmetricbase.md) collection.|Get a list of the monthly [inactiveUsersMetric](../resources/inactiveusersmetricbase.md) objects and their properties.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|factDate|Date|Day of the insight.|
|ID|String|Identifier for the user insight. Inherited from [entity](../resources/entity.md).|
|inactive1DayCount|Int64|Number of users inactive for one day. Supports `$select`.|
|inactive30DayCount|Int64|Number of users inactive for 30 consecutive days. Supports `$select`.|
|inactive60DayCount|Int64|Number of users inactive for 60 consecutive days. Supports `$select`.|
|inactive90DayCount|Int64|Number of users inactive for 90 consecutive days. Supports `$select`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.inactiveUsersMetricBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.inactiveUsersMetricBase",
  "id": "String (identifier)",
  "factDate": "Date",
  "inactiveCalendarMonthCount":"Integer",
  "inactive30DayCount": "Integer",
  "inactive60DayCount": "Integer",
  "inactive90DayCount": "Integer"
}
```

