---
title: "monthlyUserInsightMetricsRoot resource type"
description: "Represents a container for summaries of monthly user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# monthlyUserInsightMetricsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for summaries of monthly user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.

## Properties
None.

## Relationships
|Property|Type|Description|
|:---|:---|:---|
|activeUsers|[activeUsersMetric](../resources/activeusersmetric.md) collection|Insights for active users on apps registered in the tenant for a specified period.|
|activeUsersBreakdown (deprecated)|[activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection|Insights for the breakdown of users who were active on apps registered in the tenant for a specified period.|
|authentications|[authenticationsMetric](../resources/authenticationsmetric.md) collection|Insights for authentications on apps registered in the tenant for a specified period.|
|mfaCompletions|[mfaCompletionMetric](../resources/mfacompletionmetric.md) collection|Insights for MFA usage on apps registered in the tenant for a specified period.|
|requests|[userRequestsMetric](../resources/userrequestsmetric.md) collection| Insights for all user requests on apps registered in the tenant for a specified period.|
|signUps|[userSignUpMetric](../resources/usersignupmetric.md) collection|Total sign-ups on apps registered in the tenant for a specified period.|
|summary|[insightSummary](../resources/insightsummary.md) collection|Summary of all usage insights on apps registered in the tenant for a specified period.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.monthlyUserInsightMetricsRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.monthlyUserInsightMetricsRoot"
}
```

