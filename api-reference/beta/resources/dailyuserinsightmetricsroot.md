---
title: "dailyUserInsights resource type"
description: "A container for the different summaries of daily user activites on apps registered in the tenant."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# dailyUserInsighs resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for the different summaries of daily user activites on apps registered in the tenant.
> [!NOTE]
> The APIs are only available to Entra ID for customers tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List activeUsers](../api/dailyuserinsightmetricsroot-list-activeusers.md)|[activeUsersMetric](../resources/activeusersmetric.md) collection.|Daily summary of active users on apps registred in the tenant for specified time period.|
|[List activeUsersBreakdown](../api/dailyuserinsightmetricsroot-list-activeusersbreakdown.md)|[activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection.|Daily summary of active users breakdown on apps registred in the tenant for specified time period.|
|[List authentications](../api/dailyuserinsightmetricsroot-list-authentications.md)|[authenticationsMetric](../resources/authenticationsmetric.md) collection.|Daily summary of authentications on apps registred in the tenant for specified time period.|
|[List mfaCompletions](../api/dailyuserinsightmetricsroot-list-mfacompletions.md)|[mfaCompletionMetric](../resources/mfacompletionmetric.md) collection.|Daily summary of MFA completions on apps registred in the tenant for specified time period.|
|[List signUps](../api/dailyuserinsightmetricsroot-list-signups.md)|[userSignUpMetric](../resources/usersignupmetric.md) collection.|Daily summary of user signups on apps registred in the tenant for specified time period.|
|[List summary](../api/dailyuserinsightmetricsroot-list-summary.md)|[insightSummary](../resources/insightsummary.md) collection.|Daily summary of all insights on apps registred in the tenant for specified time period.|
|[List userCount](../api/dailyuserinsightmetricsroot-list-usercount.md)|[userCountMetric](../resources/usercountmetric.md) collection|Daily summary of user count on apps registred in the tenant for specified time period.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activeUsers|[activeUsersMetric](../resources/activeusersmetric.md) collection.|Insight for active users on apps registred in the tenant for specified time period.|
|activeUsersBreakdown|[activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection.| Insight for the breakdown of users who were active on apps registred in the tenant for specified time period.|
|authentications|[authenticationsMetric](../resources/authenticationsmetric.md) collection.|Insights for authentications on apps registred in the tenant for specified time period.|
|mfaCompletions|[mfaCompletionMetric](../resources/mfacompletionmetric.md) collection.|Insights for MFA usage on apps registred in the tenant for specified time period.|
|signUps|[userSignUpMetric](../resources/usersignupmetric.md) collection.| Total sign-ups on apps registred in the tenant for specified time period.|
|summary|[insightSummary](../resources/insightsummary.md) collection.| Summary of all usage insights on apps registred in the tenant for specified time period.|
|userCount|[userCountMetric](../resources/usercountmetric.md) collection.|Insight for total users on apps registred in the tenant for specified time period.|

## JSON representation
Here's a JSON representation of the resource.
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

