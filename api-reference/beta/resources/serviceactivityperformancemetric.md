---
title: "serviceActivityPerformanceMetric resource type"
description: "Describes the aggregated percentage of a service's performance over a given interval from the start time."
author: "mkuninty"
ms.localizationpriority: medium
ms.subservice: "m365-monitoring-service"
doc_type: resourcePageType
---

# serviceActivityPerformanceMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the aggregated percentage of a service's performance over a given interval from the start time.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|intervalStartDateTime|DateTimeOffset|The starting date and time (UTC) of the interval.|
|percentage|Double|The aggregated performance over the given aggregation interval starting from the `intervalStartDateTime`. The performance is calculated at the minute level. The performance at the starting minute of the `intervalStartDateTime` is included. The performance at the last minute of the given interval is excluded. For example, if the `intervalStartDateTime` is `2023-09-20T18:00:00Z` and the aggregation interval is `5` minutes, then performance is aggregated from `2023-09-20T18:00:00Z` (inclusive) to `2023-09-20T18:05:00Z` (exclusive).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.serviceActivityPerformanceMetric"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceActivityPerformanceMetric",
  "intervalStartDateTime": "String (timestamp)",
  "percentage": "Double"
}
```

