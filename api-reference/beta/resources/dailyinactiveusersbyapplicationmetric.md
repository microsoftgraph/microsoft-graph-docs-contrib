---
title: "dailyInactiveUsersByApplicationMetric resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# dailyInactiveUsersByApplicationMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dailyInactiveUsersByApplicationMetrics](../api/dailyinactiveusersbyapplicationmetric-list.md)|[dailyInactiveUsersByApplicationMetric](../resources/dailyinactiveusersbyapplicationmetric.md) collection|Get a list of the [dailyInactiveUsersByApplicationMetric](../resources/dailyinactiveusersbyapplicationmetric.md) objects and their properties.|
|[Get dailyInactiveUsersByApplicationMetric](../api/dailyinactiveusersbyapplicationmetric-get.md)|[dailyInactiveUsersByApplicationMetric](../resources/dailyinactiveusersbyapplicationmetric.md)|Read the properties and relationships of a [dailyInactiveUsersByApplicationMetric](../resources/dailyinactiveusersbyapplicationmetric.md) object.|
|[Update dailyInactiveUsersByApplicationMetric](../api/dailyinactiveusersbyapplicationmetric-update.md)|[dailyInactiveUsersByApplicationMetric](../resources/dailyinactiveusersbyapplicationmetric.md)|Update the properties of a [dailyInactiveUsersByApplicationMetric](../resources/dailyinactiveusersbyapplicationmetric.md) object.|
|[Delete dailyInactiveUsersByApplicationMetric](../api/dailyinactiveusersbyapplicationmetric-delete.md)|None|Delete a [dailyInactiveUsersByApplicationMetric](../resources/dailyinactiveusersbyapplicationmetric.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|factDate|Date|**TODO: Add Description** Inherited from [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|inactive1DayCount|Int64|**TODO: Add Description**|
|inactive30DayCount|Int64|**TODO: Add Description** Inherited from [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md).|
|inactive60DayCount|Int64|**TODO: Add Description** Inherited from [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md).|
|inactive90DayCount|Int64|**TODO: Add Description** Inherited from [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.dailyInactiveUsersByApplicationMetric",
  "baseType": "microsoft.graph.inactiveUsersByApplicationMetricBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dailyInactiveUsersByApplicationMetric",
  "id": "String (identifier)",
  "factDate": "Date",
  "inactive30DayCount": "Integer",
  "inactive60DayCount": "Integer",
  "inactive90DayCount": "Integer",
  "inactive1DayCount": "Integer"
}
```

