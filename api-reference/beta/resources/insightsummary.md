---
title: "insightSummary resource type"
description: "Represents a summary of all usage insights on apps registered in your tenant configured for Microsoft Entra External ID for customers, over a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# insightSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of all usage insights on apps registered in your tenant configured for Microsoft Entra External ID for customers, over a specific period. A user (in **activeUsers**) can be counted more that once if they use multiple device platforms.

This resource represents a summary of the insights. For a breakdown of each insight, see the following resources:
- [activeUsersBreakdown](../resources/activeusersbreakdownmetric.md)
- [activeUsers](../resources/activeusersmetric.md)
- [authentications](../resources/authenticationsmetric.md)
- [mfaCompletion](../resources/mfacompletionmetric.md)
- [userCountMetric](../resources/usercountmetric.md)
- [userRequests](../resources/userrequestsmetric.md)
- [userSignUp](../resources/usersignupmetric.md)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dailyInsightSummaries](../api/dailyuserinsightmetricsroot-list-summary.md)|[insightSummary](../resources/insightsummary.md) collection.|Get a list of the daily [insightSummary](../resources/insightsummary.md) objects and their properties.|
|[Get monthlyInsightSummary](../api/monthlyuserinsightmetricsroot-list-summary.md)|[insightSummary](../resources/insightsummary.md) collection.|Get a list of the monthly [insightSummary](../resources/insightsummary.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeUsers|Int64|Daily active users.|
|appId|String|Application ID the users sent requests to.|
|authenticationCompletions|Int64|Daily authentication completions.|
|authenticationRequests|Int64|Daily authentication requests.|
|factDate|Date|Day/Month of the insight.|
|id|String|Identifier for the insight. Inherited from [entity](../resources/entity.md).|
|os|String|The platform for the device that the customers used. Supports `$filter` (`eq`).|
|securityTextCompletions|Int64|Daily MFA SMS completions.|
|securityTextRequests|Int64|Daily MFA SMS requests.|
|securityVoiceCompletions|Int64|Daily MFA Voice completions.|
|securityVoiceRequests|Int64|Daily MFA Voice requests.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.insightSummary",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.insightSummary",
  "activeUsers": "Int64",
  "appId": "String",
  "authenticationCompletions": "Int64",
  "authenticationRequests": "Int64",
  "factDate": "String (date)",
  "id": "String (identifier)",
  "os": "String",
  "securityTextCompletions": "Int64",
  "securityTextRequests": "Int64",
  "securityVoiceCompletions": "Int64",
  "securityVoiceRequests": "Int64"
}
```
