---
title: "dailyUserInsightMetricsRoot resource type"
description: "Represents a container for summaries of daily user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# dailyUserInsightMetricsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for summaries of daily user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activeUsers|[activeUsersMetric](../resources/activeusersmetric.md) collection|Insights for active users on apps registered in the tenant for a specified period.|
|authentications|[authenticationsMetric](../resources/authenticationsmetric.md) collection|Insights for authentications on apps registered in the tenant for a specified period.|
|mfaCompletions|[mfaCompletionMetric](../resources/mfacompletionmetric.md) collection|Insights for MFA usage on apps registered in the tenant for a specified period.|
|signUps|[userSignUpMetric](../resources/usersignupmetric.md) collection| Total sign-ups on apps registered in the tenant for a specified period.|
|summary|[insightSummary](../resources/insightsummary.md) collection| Summary of all usage insights on apps registered in the tenant for a specified period.|
|userCount|[userCountMetric](../resources/usercountmetric.md) collection|Insights for total users on apps registered in the tenant for a specified period.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.dailyUserInsightMetricsRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dailyUserInsightMetricsRoot"
}
```

