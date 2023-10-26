---
title: "userInsightsRoot resource type"
description: "Summaries of daily and monthly user activities on apps registered in your Microsoft Entra External ID for customers tenant."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userInsightsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Summaries of daily and monthly user activities on apps registered in your Microsoft Entra External ID for customers tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily activeUsers](../api/dailyuserinsightmetricsroot-list-activeusers.md)|[activeUsersMetric](../resources/activeusersmetric.md) collection.|Daily summary of active users on apps registered in your tenant for specified time period.|
|[List monthly activeUsers](../api/monthlyuserinsightsmetricsroot-list-activeusers.md)|[activeUsersMetric](../resources/activeusersmetric.md) collection.|Monthly summary of active users on apps registered in the tenant for specified time period.|
|[List daily activeUsersBreakdown](../api/dailyuserinsightmetricsroot-list-activeusersbreakdown.md)|[activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection.|Daily summary of active users breakdown on apps registered in your tenant for specified time period.|
|[List monthly activeUsersBreakdown](../api/monthlyuserinsightmetricsroot-list-activeusersbreakdown.md)|[activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) collection.|Monthly breakdown summary of active users on app
|[List daily authentications](../api/dailyuserinsightmetricsroot-list-authentications.md)|[authenticationsMetric](../resources/authenticationsmetric.md) collection.|Daily summary of authentications on apps registered in your tenant for specified time period.|
|[List monthly authentications](../api/monthlyuserinsightmetricsroot-list-authentications.md)|[authenticationsMetric](../resources/authenticationsmetric.md) collection.|Monthly summary of authentications on apps registered in the tenant for specified time period.|
|[List daily mfaCompletions](../api/dailyuserinsightmetricsroot-list-mfacompletions.md)|[mfaCompletionMetric](../resources/mfacompletionmetric.md) collection.|Daily summary of MFA completions on apps registered in your tenant for specified time period.|
|[List monthly mfaCompletions](../api/monthlyuserinsightmetricsroot-list-mfacompletions.md)|[mfaCompletionMetric](../resources/mfacompletionmetric.md) collection.|Monthly summary of MFA usage on apps registered in the tenant for specified time period.|
|[List monthly requests](../api/monthlyuserinsightmetricsroot-list-requests.md)|[userRequestsMetric](../resources/userrequestsmetric.md) collection|Monthly summary of requests on apps registered in the tenant for specified time period.|
|[List daily signUps](../api/dailyuserinsightmetricsroot-list-signups.md)|[userSignUpMetric](../resources/usersignupmetric.md) collection.|Daily summary of user signups on apps registered in your tenant for specified time period.|
|[List monthly signUps](../api/monthlyuserinsightmetricsroot-list-signups.md)|[userSignUpMetric](../resources/usersignupmetric.md) collection|Monthly summary of sign-ups on apps registered in the tenant for specified time period.|
|[List daily summary](../api/dailyuserinsightmetricsroot-list-summary.md)|[insightSummary](../resources/insightsummary.md) collection.|Daily summary of all insights on apps registered in your tenant for specified time period.|
|[List monthly summary](../api/monthlyuserinsightmetricsroot-list-summary.md)|[insightSummary](../resources/insightsummary.md)|Monthly summary of all insights on apps registered in your tenant for specified time period.|
|[List daily userCount](../api/dailyuserinsightmetricsroot-list-usercount.md)|[userCountMetric](../resources/usercountmetric.md) collection|Daily summary of user count on apps registered in your tenant for specified time period.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|daily|[dailyUserInsightMetricsRoot](../resources/dailyuserinsightmetricsroot.md)|Summaries of daily user activities on apps registered in your Microsoft Entra External ID for customers tenant.|
|monthly|[monthlyUserInsightMetricsRoot](../resources/monthlyuserinsightmetricsroot.md)|Summaries of monthly user activities on apps registered in your Microsoft Entra External ID for customers tenant.|

## JSON representation
The following is a JSON representation of the resource.
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

