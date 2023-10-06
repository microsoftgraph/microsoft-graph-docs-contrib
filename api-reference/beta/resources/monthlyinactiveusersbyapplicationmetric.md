---
title: "monthlyInactiveUsersByApplicationMetric resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# monthlyInactiveUsersByApplicationMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List monthlyInactiveUsersByApplicationMetrics](../api/monthlyinactiveusersbyapplicationmetric-list.md)|[monthlyInactiveUsersByApplicationMetric](../resources/monthlyinactiveusersbyapplicationmetric.md) collection|Get a list of the [monthlyInactiveUsersByApplicationMetric](../resources/monthlyinactiveusersbyapplicationmetric.md) objects and their properties.|
|[Get monthlyInactiveUsersByApplicationMetric](../api/monthlyinactiveusersbyapplicationmetric-get.md)|[monthlyInactiveUsersByApplicationMetric](../resources/monthlyinactiveusersbyapplicationmetric.md)|Read the properties and relationships of a [monthlyInactiveUsersByApplicationMetric](../resources/monthlyinactiveusersbyapplicationmetric.md) object.|
|[Update monthlyInactiveUsersByApplicationMetric](../api/monthlyinactiveusersbyapplicationmetric-update.md)|[monthlyInactiveUsersByApplicationMetric](../resources/monthlyinactiveusersbyapplicationmetric.md)|Update the properties of a [monthlyInactiveUsersByApplicationMetric](../resources/monthlyinactiveusersbyapplicationmetric.md) object.|
|[Delete monthlyInactiveUsersByApplicationMetric](../api/monthlyinactiveusersbyapplicationmetric-delete.md)|None|Delete a [monthlyInactiveUsersByApplicationMetric](../resources/monthlyinactiveusersbyapplicationmetric.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|factDate|Date|**TODO: Add Description** Inherited from [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|inactive30DayCount|Int64|**TODO: Add Description** Inherited from [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md).|
|inactive60DayCount|Int64|**TODO: Add Description** Inherited from [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md).|
|inactive90DayCount|Int64|**TODO: Add Description** Inherited from [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md).|
|inactiveCalendarMonthCount|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.monthlyInactiveUsersByApplicationMetric",
  "baseType": "microsoft.graph.inactiveUsersByApplicationMetricBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.monthlyInactiveUsersByApplicationMetric",
  "id": "String (identifier)",
  "factDate": "Date",
  "inactive30DayCount": "Integer",
  "inactive60DayCount": "Integer",
  "inactive90DayCount": "Integer",
  "inactiveCalendarMonthCount": "Integer"
}
```

