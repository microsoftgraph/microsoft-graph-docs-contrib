---
title: "insightSummary resource type"
description: "Summary of all usage insights for a specific time period."
author: "kingjuli"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# insightSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Summary of all usage insights for a specific time period.

> **_NOTE:_**
> A user (in `activeUsers`) may be counted more that once if they use multiple device platforms. This shall be communicated to the customer.
> This endpoint is meant to provide a summary of the insights. A breakdown of each insight is available in the latter entities.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List insightSummaries](../api/dailyuserinsightmetricsroot-list-summary.md)|[insightSummary](../resources/insightsummary.md) collection|Get a list of the [insightSummary](../resources/insightsummary.md) objects and their properties.|
|[Get insightSummary](../api/insightsummary-get.md)|[insightSummary](../resources/insightsummary.md)|Read the properties and relationships of an [insightSummary](../resources/insightsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeUsers|Int64|**TODO: Add Description**|
|appId|String|**TODO: Add Description**|
|authenticationCompletions|Int64|**TODO: Add Description**|
|authenticationRequests|Int64|**TODO: Add Description**|
|factDate|Date|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|os|String|**TODO: Add Description**|
|securityTextCompletions|Int64|**TODO: Add Description**|
|securityTextRequests|Int64|**TODO: Add Description**|
|securityVoiceCompletions|Int64|**TODO: Add Description**|
|securityVoiceRequests|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "factDate": "Date",
  "activeUsers": "Integer",
  "authenticationRequests": "Integer",
  "authenticationCompletions": "Integer",
  "securityTextRequests": "Integer",
  "securityTextCompletions": "Integer",
  "securityVoiceRequests": "Integer",
  "securityVoiceCompletions": "Integer",
  "os": "String",
  "appId": "String"
}
```

