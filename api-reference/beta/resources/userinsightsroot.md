---
title: "userInsightsRoot resource type"
description: "Application insights for all available user requests to a tenant for a specific period"
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userInsightsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Application insights for all user requests to a tenant for a specific period. This involves all requests including authentication requests, signup requests, mfa requests etc.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userInsightsRoots](../api/reportroot-list-userinsights.md)|[userInsightsRoot](../resources/userinsightsroot.md) collection|Get a list of the [userInsightsRoot](../resources/userinsightsroot.md) objects and their properties.|
|[List dailyUserInsightMetricsRoot](../api/userinsightsroot-list-daily.md)|[dailyUserInsightMetricsRoot](../resources/dailyuserinsightmetricsroot.md) collection|Get the dailyUserInsightMetricsRoot resources from the daily navigation property.|
|[List monthlyUserInsightMetricsRoot](../api/userinsightsroot-list-monthly.md)|[monthlyUserInsightMetricsRoot](../resources/monthlyuserinsightmetricsroot.md) collection|Get the monthlyUserInsightMetricsRoot resources from the monthly navigation property.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|daily|[dailyUserInsightMetricsRoot](../resources/dailyuserinsightmetricsroot.md)|All available insights with a daily cadence as seen in the userInsightsRoot entity.|
|monthly|[monthlyUserInsightMetricsRoot](../resources/monthlyuserinsightmetricsroot.md)|All available insights with a monthly cadence as seen in the userInsightsRoot entity.|

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userInsightsRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userInsightsRoot"
}
```

