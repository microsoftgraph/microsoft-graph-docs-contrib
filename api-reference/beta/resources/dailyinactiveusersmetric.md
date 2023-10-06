---
title: "dailyInactiveUsersMetric resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# dailyInactiveUsersMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dailyInactiveUsersMetrics](../api/dailyinactiveusersmetric-list.md)|[dailyInactiveUsersMetric](../resources/dailyinactiveusersmetric.md) collection|Get a list of the [dailyInactiveUsersMetric](../resources/dailyinactiveusersmetric.md) objects and their properties.|
|[Get dailyInactiveUsersMetric](../api/dailyinactiveusersmetric-get.md)|[dailyInactiveUsersMetric](../resources/dailyinactiveusersmetric.md)|Read the properties and relationships of a [dailyInactiveUsersMetric](../resources/dailyinactiveusersmetric.md) object.|
|[Update dailyInactiveUsersMetric](../api/dailyinactiveusersmetric-update.md)|[dailyInactiveUsersMetric](../resources/dailyinactiveusersmetric.md)|Update the properties of a [dailyInactiveUsersMetric](../resources/dailyinactiveusersmetric.md) object.|
|[Delete dailyInactiveUsersMetric](../api/dailyinactiveusersmetric-delete.md)|None|Delete a [dailyInactiveUsersMetric](../resources/dailyinactiveusersmetric.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|factDate|Date|**TODO: Add Description** Inherited from [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|inactive1DayCount|Int64|**TODO: Add Description**|
|inactive30DayCount|Int64|**TODO: Add Description** Inherited from [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md).|
|inactive60DayCount|Int64|**TODO: Add Description** Inherited from [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md).|
|inactive90DayCount|Int64|**TODO: Add Description** Inherited from [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.dailyInactiveUsersMetric",
  "baseType": "microsoft.graph.inactiveUsersMetricBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dailyInactiveUsersMetric",
  "id": "String (identifier)",
  "factDate": "Date",
  "inactive30DayCount": "Integer",
  "inactive60DayCount": "Integer",
  "inactive90DayCount": "Integer",
  "inactive1DayCount": "Integer"
}
```

