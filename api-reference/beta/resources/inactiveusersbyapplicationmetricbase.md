---
title: "inactiveUsersByApplicationMetricBase resource type"
description: "Breakdown by application insights for users who were inactive for a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# inactiveUsersByApplicationMetricBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This insight metric provides users who were inactive for a specific period broken down by application.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dailyInactiveUsersByApplicationMetric](../api/dailyinactiveusersbyapplicationmetric-list.md)|[inactiveUsersByApplicationMetric](../resources/inactiveusersbyapplicationmetricbase.md) collection.|Get a list of the daily [inactiveUsersByApplicationMetric](../resources/inactiveusersbyapplicationmetricbase.md) objects and their properties.|
|[List monthlyInactiveUsersByApplicationMetric](../api/monthlyinactiveusersbyapplicationmetric-list.md)| [inactiveUsersByApplicationMetric](../resources/inactiveusersbyapplicationmetricbase.md) collection.|Get a list of the monthly [inactiveUsersByApplicationMetric](../resources/inactiveusersbyapplicationmetricbase.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|factDate|Date|Day of the insight.|
|ID|String|Identifier for the user insight. Inherited from [entity](../resources/entity.md).|
|inactive30DayCount|Int64|Number of users inactive for 30 consecutive days. Supports `$select`.|
|inactive60DayCount|Int64|Number of users inactive for 60 consecutive days.Supports `$select`.|
|inactive90DayCount|Int64|Number of users inactive for 90 consecutive days.Supports `$select`.|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.inactiveUsersByApplicationMetricBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.inactiveUsersByApplicationMetricBase",
  "id": "String (identifier)",
  "factDate": "Date",
  "inactive30DayCount": "Integer",
  "inactive60DayCount": "Integer",
  "inactive90DayCount": "Integer"
}
```

