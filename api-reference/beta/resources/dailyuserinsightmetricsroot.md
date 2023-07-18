---
title: "dailyUserInsightMetricsRoot resource type"
description: "This entity will contain all available insights with a daily cadence as seen in the userInsightsRoot entity."
author: "kingjuli"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# dailyUserInsightMetricsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This entity will contain all available insights with a daily cadence as seen in the `userInsightsRoot` entity.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List activeUsers](../api/dailyuserinsightmetricsroot-list-activeusers.md)|[activeUsersMetric](../resources/activeusersmetric.md) collection|Get the activeUsersMetric resources from the activeUsers navigation property.|
|[List activeUsersBreakdown](../api/dailyuserinsightmetricsroot-list-activeusersbreakdown.md)|[activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection|Get the activeUsersBreakdownMetric resources from the activeUsersBreakdown navigation property.|
|[List authentications](../api/dailyuserinsightmetricsroot-list-authentications.md)|[authenticationsMetric](../resources/authenticationsmetric.md) collection|Get the authenticationsMetric resources from the authentications navigation property.|
|[List mfaCompletions](../api/dailyuserinsightmetricsroot-list-mfacompletions.md)|[mfaCompletionMetric](../resources/mfacompletionmetric.md) collection|Get the mfaCompletionMetric resources from the mfaCompletions navigation property.|
|[List requests](../api/dailyuserinsightmetricsroot-list-requests.md)|[userRequestsMetric](../resources/userrequestsmetric.md) collection|Get the userRequestsMetric resources from the requests navigation property.|
|[List signUps](../api/dailyuserinsightmetricsroot-list-signups.md)|[userSignUpMetric](../resources/usersignupmetric.md) collection|Get the userSignUpMetric resources from the signUps navigation property.|
|[List summary](../api/dailyuserinsightmetricsroot-list-summary.md)|[insightSummary](../resources/insightsummary.md) collection|Get the insightSummary resources from the summary navigation property.|
|[List userCount](../api/dailyuserinsightmetricsroot-list-usercount.md)|[userCountMetric](../resources/usercountmetric.md) collection|Get the userCountMetric resources from the userCount navigation property.|

## Relationships
|Property|Type|Description|
|:---|:---|:---|
| `userCount`            | `Collection(self.userCount)`                  | Summary of total users over a specified time period|
| `summary`              | `Collection(self.insightSummary)`             | Summary of all usage insights for specified time period|
| `signUps`              | `Collection(self.userSignUpMetric)`           | Total registrations for specified time period|
| `activeUsers`          | `Collection(self.activeUsersMetric)`          | Insight for active users for specified time period|
| `activeUsersBreakdown` | `Collection(self.activeUsersBreakdownMetric)` | Insight for the breakdown of users who were active for specified time period|
| `authentications`      | `Collection(self.authenticationsMetric)`      | Insights for authentications for specified time period|
| `mfaCompletions`       | `Collection(self.mfaCompletionMetric)`        | Insights for MFA calls for specified time period|
| `requests`             | `Collection(self.userRequestsMetric)`         | Insights for all user requests to a tenant for specified time period|

## JSON representation
The following is a JSON representation of the resource.
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

