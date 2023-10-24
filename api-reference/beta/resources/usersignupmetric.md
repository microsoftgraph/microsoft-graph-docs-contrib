---
title: "userSignUpMetric resource type"
description: "Insights for user sign ups for a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userSignUpMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Insights for user sign ups for a specific period.

> **_NOTE:_**
> If you combine all counts in this entity, it **SHOULD** tally with the sum in the summary entity above.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily userSignUpMetrics](../api/dailyuserinsightmetricsroot-list-signups.md)|[daily userSignUpMetrics](../resources/usersignupmetric.md) collection|Get a list of the daily [userSignUpMetric](../resources/usersignupmetric.md) objects and their properties.|
|[List monthly userSignUpMetrics](../api/monthlyuserinsightmetricsroot-list-signups.md)|[monthly userSignUpMetrics](../resources/usersignupmetric.md) collection|Get a list of the monthly [userSignUpMetric](../resources/usersignupmetric.md) objects and their properties.|
|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int64|Number of users who signed up.Supports `$filter` (`eq`).|
|factDate|Date|The date of the user insight.|
|id|String|Identifier for the user insight.|
|os|String|The device plaform that the customers used. Supports `$filter` (`eq`).|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userSignUpMetric",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userSignUpMetric",
  "id": "String (identifier)",
  "factDate": "Date",
  "count": "Integer",
  "os": "String"
}
```

