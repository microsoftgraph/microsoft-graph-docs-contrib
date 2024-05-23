---
title: "insightSummary resource type"
description: "Represents a daily or monthly summary of all usage insights on apps registered in your tenant that is configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# insightSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a daily or monthly summary of all usage insights on apps registered in your tenant that is configured for Microsoft Entra External ID for customers. A user (in **activeUsers**) can be counted more that once if they use multiple device platforms.

This resource represents a summary of the insights. For a breakdown of each insight, see the following resources and their associated APIs:
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
|[List daily summary](../api/dailyuserinsightmetricsroot-list-summary.md)|[insightSummary](../resources/insightsummary.md) collection|Get a list of daily [insightSummary](../resources/insightsummary.md) objects on apps registered in your tenant configured for Microsoft Entra External ID for customers.|
|[List monthly summary](../api/monthlyuserinsightmetricsroot-list-summary.md)|[insightSummary](../resources/insightsummary.md) collection|Get a list of monthly  [insightSummary](../resources/insightsummary.md) objects on apps registered in your tenant configured for Microsoft Entra External ID for customers.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeUsers|Int64|Daily active users.|
|appId|String|The ID of the Microsoft Entra application.|
|authenticationCompletions|Int64|Daily authentication completions.|
|authenticationRequests|Int64|Daily authentication requests.|
|factDate|Date|The date of the insight.|
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
