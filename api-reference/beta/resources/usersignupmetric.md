---
title: "userSignUp resource type"
description: "Insights for user sign-ups on apps registered in your Microsoft Entra External ID for customers tenant for a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Insights for user sign-ups on apps registered in your Microsoft Entra External ID for customers tenant for a specific period.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily userSignUp](../api/dailyuserinsightmetricsroot-list-signups.md)|[userSignUp](../resources/usersignupmetric.md) collection|Get a list of the daily [userSignUp](../resources/usersignupmetric.md) objects and their properties.|
|[List monthly userSignUp](../api/monthlyuserinsightmetricsroot-list-signups.md)|[userSignUp](../resources/usersignupmetric.md) collection|Get a list of the monthly [userSignUp](../resources/usersignupmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int64|Number of users who signed up. Supports `$filter` (`eq`).|
|factDate|Date|The date of the user insight.|
|id|String|Identifier for the user insight.|
|os|String|The device plaform that the customers used. Supports `$filter` (`eq`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
