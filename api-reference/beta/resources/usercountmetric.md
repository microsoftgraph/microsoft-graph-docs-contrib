---
title: "userCountMetric resource type"
description: "Represents daily insights on the total number of users for apps registered in your tenant that is configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# userCountMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents daily insights on the total number of users for apps registered in your tenant that is configured for Microsoft Entra External ID for customers.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily userCount](../api/dailyuserinsightmetricsroot-list-usercount.md)| [userCountMetric](../resources/usercountmetric.md) collection|Get a list of daily [user count](../resources/usercountmetric.md) on apps registered in your tenant configured for Microsoft Entra External ID for customers.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int64| The total number of users in the tenant over time.|
|factDate|Date| The date of the insight.|
|id|String| Identifier for the insight. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userCountMetric",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userCountMetric",
  "count": "Int64",
  "factDate": "String (date)",
  "id": "String (identifier)",
}
```
