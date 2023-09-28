---
title: "monthlyUserInsightMetricsRoot resource type"
description: "This entity will contain all available insights with a monthly cadence as seen in the userInsightsRoot entity."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# monthlyUserInsightMetricsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This entity will contain all available insights with a monthly cadence as seen in the userInsightsRoot entity.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List activeUsers](../api/monthlyuserinsightsmetricsroot-list-activeusers.md)|[activeUsersMetric](../resources/activeusersmetric.md) collection|Get the activeUsersMetric resources from the activeUsers navigation property.|
|[List activeUsersBreakdown](../api/monthlyuserinsightmetricsroot-list-activeusersbreakdown.md)|[activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection|Get the activeUsersBreakdownMetric resources from the activeUsersBreakdown navigation property.|
|[List authentications](../api/monthlyuserinsightmetricsroot-list-authentications.md)|[authenticationsMetric](../resources/authenticationsmetric.md) collection|Get the authenticationsMetric resources from the authentications navigation property.|
|[List mfaCompletions](../api/monthlyuserinsightmetricsroot-list-mfacompletions.md)|[mfaCompletionMetric](../resources/mfacompletionmetric.md) collection|Get the mfaCompletionMetric resources from the mfaCompletions navigation property.|
|[List requests](../api/monthlyuserinsightmetricsroot-list-requests.md)|[userRequestsMetric](../resources/userrequestsmetric.md) collection|Get the userRequestsMetric resources from the requests navigation property.|
|[List signUps](../api/monthlyuserinsightmetricsroot-list-signups.md)|[userSignUpMetric](../resources/usersignupmetric.md) collection|Get the userSignUpMetric resources from the signUps navigation property.|


## Relationships
|Property|Type|Description|
|:---|:---|:---|
|activeUsers|[activeUsersMetric](../resources/activeusersmetric.md) collection| Insight for active users for specified time period.|
|activeUsersBreakdown|[activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection| Insight for the breakdown of users who were active for specified time period.|
|authentications|[authenticationsMetric](../resources/authenticationsmetric.md) collection| Insights for authentications for specified time period.|
|mfaCompletions|[mfaCompletionMetric](../resources/mfacompletionmetric.md) collection| Insights for MFA calls for specified time period.|
|requests|[userRequestsMetric](../resources/userrequestsmetric.md) collection| Insights for all user requests to a tenant for specified time period.|
|userCount| [userRequestsMetric](../resources/usercountmetric.md) collection| Summary of total users over a specified time period.|
|signUps|[userSignUpMetric](../resources/usersignupmetric.md) collection| Total registrations for specified time period.|
||summary|[insightSummary](../resources/insightsummary.md) collection| Summary of all usage insights for specified time period.|

## JSON representation
Here's a JSON representation of the resource.
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

