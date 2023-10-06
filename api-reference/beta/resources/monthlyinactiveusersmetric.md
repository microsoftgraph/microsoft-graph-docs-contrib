---
title: "monthlyInactiveUsersMetric resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# monthlyInactiveUsersMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List monthlyInactiveUsersMetrics](../api/monthlyinactiveusersmetric-list.md)|[monthlyInactiveUsersMetric](../resources/monthlyinactiveusersmetric.md) collection|Get a list of the [monthlyInactiveUsersMetric](../resources/monthlyinactiveusersmetric.md) objects and their properties.|
|[Get monthlyInactiveUsersMetric](../api/monthlyinactiveusersmetric-get.md)|[monthlyInactiveUsersMetric](../resources/monthlyinactiveusersmetric.md)|Read the properties and relationships of a [monthlyInactiveUsersMetric](../resources/monthlyinactiveusersmetric.md) object.|
|[Update monthlyInactiveUsersMetric](../api/monthlyinactiveusersmetric-update.md)|[monthlyInactiveUsersMetric](../resources/monthlyinactiveusersmetric.md)|Update the properties of a [monthlyInactiveUsersMetric](../resources/monthlyinactiveusersmetric.md) object.|
|[Delete monthlyInactiveUsersMetric](../api/monthlyinactiveusersmetric-delete.md)|None|Delete a [monthlyInactiveUsersMetric](../resources/monthlyinactiveusersmetric.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|factDate|Date|**TODO: Add Description** Inherited from [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|inactive30DayCount|Int64|**TODO: Add Description** Inherited from [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md).|
|inactive60DayCount|Int64|**TODO: Add Description** Inherited from [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md).|
|inactive90DayCount|Int64|**TODO: Add Description** Inherited from [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md).|
|inactiveCalendarMonthCount|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.monthlyInactiveUsersMetric",
  "baseType": "microsoft.graph.inactiveUsersMetricBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.monthlyInactiveUsersMetric",
  "id": "String (identifier)",
  "factDate": "Date",
  "inactive30DayCount": "Integer",
  "inactive60DayCount": "Integer",
  "inactive90DayCount": "Integer",
  "inactiveCalendarMonthCount": "Integer"
}
```

