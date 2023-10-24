---
title: "mfaCompletionMetric resource type"
description: "Insights for MFA calls for a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# mfaCompletionMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Insights for MFA calls for a specific period.

> **_NOTE:_**
> If you combine all counts in this entity, it **SHOULD** tally with the sum in the summary entity above.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily mfaCompletionMetrics](../api/dailyuserinsightmetricsroot-list-mfacompletions.md)|Daily [mfaCompletionMetric](../resources/mfacompletionmetric.md) collection.|Get a list of the daily [mfaCompletionMetric](../resources/mfacompletionmetric.md) objects and their properties.|
|[List monthly mfaCompletionMetrics](../api/monthlyuserinsightmetricsroot-list-mfacompletions.md)|Monthly [mfaCompletionMetric](../resources/mfacompletionmetric.md) collection.|Get a list of the monthly [mfaCompletionMetric](../resources/mfacompletionmetric.md) objects and their properties.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The application id. Supports `$filter` (`eq`).|
|attemptsCount|Int64|Number of users who attempted to sign up. Supports `$filter` (`eq`).|
|factDate|Date|The date of the user insight.|
|id|String|Identifier for the user insight.|
|mfaMethod|String|The mfa authentication method customers used. Supports `$filter` (`eq`).|
|os|String|The device plaform that the customers used. Supports `$filter` (`eq`).|
|successCount|Int64|Number of users who sucessfully signed up. Supports `$filter` (`eq`).|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mfaCompletionMetric",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mfaCompletionMetric",
  "id": "String (identifier)",
  "factDate": "Date",
  "attemptsCount": "Integer",
  "successCount": "Integer",
  "mfaMethod": "String",
  "os": "String",
  "appId": "String"
}
```

