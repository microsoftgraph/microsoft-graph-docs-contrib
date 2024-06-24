---
title: "userInsightsRoot resource type"
description: "A container for entities that represent summaries of daily and monthly user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# userInsightsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for entities that represent summaries of daily and monthly user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|daily|[dailyUserInsightMetricsRoot](../resources/dailyuserinsightmetricsroot.md)|Summaries of daily user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.|
|monthly|[monthlyUserInsightMetricsRoot](../resources/monthlyuserinsightmetricsroot.md)|Summaries of monthly user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.|

## JSON representation
The following JSON representation shows the resource type.
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

