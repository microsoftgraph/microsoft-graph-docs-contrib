---
title: "userSignUpMetric resource type"
description: "Represents insights of daily and monthly user sign-ups on apps registered in your tenant that is configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# userSignUpMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents insights of daily and monthly user sign-ups on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily signUps](../api/dailyuserinsightmetricsroot-list-signups.md)|[userSignUpMetric](../resources/usersignupmetric.md) collection|Get a list of daily [user sign-ups](../resources/usersignupmetric.md) on apps registered in your tenant configured for Microsoft Entra External ID for customers.|
|[List monthly signUps](../api/monthlyuserinsightmetricsroot-list-signups.md)|[userSignUpMetric](../resources/usersignupmetric.md) collection|Get a list of monthly [user sign-ups](../resources/usersignupmetric.md) on apps registered in your tenant configured for Microsoft Entra External ID for customers.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int64|The total number of users who signed up in the specified period. Supports `$filter` (`eq`).|
|factDate|Date|The date of the user insight.|
|id|String|Identifier for the user insight. Inherited from [entity](../resources/entity.md).|
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
  "count": "Int64",  
  "factDate": "String (date)",
  "id": "String (identifier)",
  "os": "String"
}
```
