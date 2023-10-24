---
title: "monthlyUserInsights resource type"
description: "A container for the different summaries of monthy user activites on apps registered in the tenant."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# monthlyUserInsightMetricsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for the different summaries of monthly user activites on apps registered in the tenant.
> [!NOTE]
> The APIs are only available to Entra ID for customers tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List activeUsers](../api/monthlyuserinsightsmetricsroot-list-activeusers.md)|[activeUsersMetric](../resources/activeusersmetric.md) collection.|Monthly summary of active users on apps registred in the tenant for specified time period.|
|[List activeUsersBreakdown](../api/monthlyuserinsightmetricsroot-list-activeusersbreakdown.md)|[activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection.|Monthly breakdown summary of active users on apps registred in the tenant for specified time period.|
|[List authentications](../api/monthlyuserinsightmetricsroot-list-authentications.md)|[authenticationsMetric](../resources/authenticationsmetric.md) collection.|Monthly summary of authentications on apps registred in the tenant for specified time period.|
|[List mfaCompletions](../api/monthlyuserinsightmetricsroot-list-mfacompletions.md)|[mfaCompletionMetric](../resources/mfacompletionmetric.md) collection.|Monthly summary of MFA usage on apps registred in the tenant for specified time period.|
|[List requests](../api/monthlyuserinsightmetricsroot-list-requests.md)|[userRequestsMetric](../resources/userrequestsmetric.md) collection|Monthly summary of requests on apps registred in the tenant for specified time period.|
|[List signUps](../api/monthlyuserinsightmetricsroot-list-signups.md)|[userSignUpMetric](../resources/usersignupmetric.md) collection|Monthly summary of sign-ups on apps registred in the tenant for specified time period.|
|[List summary](../api/monthlyuserinsightmetricsroot-list-summary.md)|[insightSummary](../resources/insightsummary.md)|Get a list of the monthly [insightSummary](../resources/insightsummary.md) objects and their properties.|


## Relationships
|Property|Type|Description|
|:---|:---|:---|
|activeUsers|[activeUsersMetric](../resources/activeusersmetric.md) collection.|Insight for active users on apps registred in the tenant for specified time period.|
|activeUsersBreakdown|[activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection.|Insight for the breakdown of users who were active on apps registred in the tenant for specified time period.|
|authentications|[authenticationsMetric](../resources/authenticationsmetric.md) collection.|Insights for authentications on apps registred in the tenant for specified time period.
|mfaCompletions|[mfaCompletionMetric](../resources/mfacompletionmetric.md) collection.|Insights for MFA usage on apps registred in the tenant for specified time period.|
|requests|[userRequestsMetric](../resources/userrequestsmetric.md) collection.| Insights for all user requests on apps registred in the tenant for specified time period.|
|signUps|[userSignUpMetric](../resources/usersignupmetric.md) collection.|Total sign-ups on apps registred in the tenant for specified time period.|
|summary|[insightSummary](../resources/insightsummary.md) collection.|Summary of all usage insights on apps registred in the tenant for specified time period.|

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

