---
title: "inactiveUsersByApplicationMetricBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# inactiveUsersByApplicationMetricBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List inactiveUsersByApplicationMetricBases](../api/inactiveusersbyapplicationmetricbase-list.md)|[inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md) collection|Get a list of the [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md) objects and their properties.|
|[Get inactiveUsersByApplicationMetricBase](../api/inactiveusersbyapplicationmetricbase-get.md)|[inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md)|Read the properties and relationships of an [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md) object.|
|[Update inactiveUsersByApplicationMetricBase](../api/inactiveusersbyapplicationmetricbase-update.md)|[inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md)|Update the properties of an [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md) object.|
|[Delete inactiveUsersByApplicationMetricBase](../api/inactiveusersbyapplicationmetricbase-delete.md)|None|Delete an [inactiveUsersByApplicationMetricBase](../resources/inactiveusersbyapplicationmetricbase.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|factDate|Date|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|inactive30DayCount|Int64|**TODO: Add Description**|
|inactive60DayCount|Int64|**TODO: Add Description**|
|inactive90DayCount|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.inactiveUsersByApplicationMetricBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.inactiveUsersByApplicationMetricBase",
  "id": "String (identifier)",
  "factDate": "Date",
  "inactive30DayCount": "Integer",
  "inactive60DayCount": "Integer",
  "inactive90DayCount": "Integer"
}
```

