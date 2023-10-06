---
title: "inactiveUsersMetricBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# inactiveUsersMetricBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List inactiveUsersMetricBases](../api/inactiveusersmetricbase-list.md)|[inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md) collection|Get a list of the [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md) objects and their properties.|
|[Get inactiveUsersMetricBase](../api/inactiveusersmetricbase-get.md)|[inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md)|Read the properties and relationships of an [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md) object.|
|[Update inactiveUsersMetricBase](../api/inactiveusersmetricbase-update.md)|[inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md)|Update the properties of an [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md) object.|
|[Delete inactiveUsersMetricBase](../api/inactiveusersmetricbase-delete.md)|None|Delete an [inactiveUsersMetricBase](../resources/inactiveusersmetricbase.md) object.|

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
  "@odata.type": "microsoft.graph.inactiveUsersMetricBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.inactiveUsersMetricBase",
  "id": "String (identifier)",
  "factDate": "Date",
  "inactive30DayCount": "Integer",
  "inactive60DayCount": "Integer",
  "inactive90DayCount": "Integer"
}
```

