---
title: "mfaCompletionMetric resource type"
description: "Insights for MFA usage for a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# mfaCompletionMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Insights for MFA usage on apps registered in your Microsoft Entra External ID for customers tenant for a specific period.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily mfaCompletionMetrics](../api/dailyuserinsightmetricsroot-list-mfacompletions.md)|Daily [mfaCompletionMetric](../resources/mfacompletionmetric.md) collection.|Get a list of the daily [mfaCompletionMetric](../resources/mfacompletionmetric.md) objects and their properties.|
|[List monthly mfaCompletionMetrics](../api/monthlyuserinsightmetricsroot-list-mfacompletions.md)|Monthly [mfaCompletionMetric](../resources/mfacompletionmetric.md) collection.|Get a list of the monthly [mfaCompletionMetric](../resources/mfacompletionmetric.md) objects and their properties.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|appID|String|The application ID. Supports `$filter` (`eq`).|
|attemptsCount|Int64|Number of users who attempted to sign up. Supports `$filter` (`eq`).|
|factDate|Date|The date of the user insight.|
|ID|String|Identifier for the user insight.|
|mfaMethod|String|The mfa authentication method customers used. Supports `$filter` (`eq`).|
|os|String|The platform of the device that the customers used. Supports `$filter` (`eq`).|
|successCount|Int64|Number of users who have successfully signed up. Supports `$filter` (`eq`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

