---
title: "privilegedAccessSchedule resource type"
description: "**TODO: Add Description**"
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessSchedule resource type

Namespace: microsoft.graph

**TODO: Add Description**
This is an abstract type.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessSchedules](../api/privilegedaccessschedule-list.md)|[privilegedAccessSchedule](../resources/privilegedaccessschedule.md) collection|Get a list of the [privilegedAccessSchedule](../resources/privilegedaccessschedule.md) objects and their properties.|
|[Get privilegedAccessSchedule](../api/privilegedaccessschedule-get.md)|[privilegedAccessSchedule](../resources/privilegedaccessschedule.md)|Read the properties and relationships of a [privilegedAccessSchedule](../resources/privilegedaccessschedule.md) object.|
|[Update privilegedAccessSchedule](../api/privilegedaccessschedule-update.md)|[privilegedAccessSchedule](../resources/privilegedaccessschedule.md)|Update the properties of a [privilegedAccessSchedule](../resources/privilegedaccessschedule.md) object.|
|[Delete privilegedAccessSchedule](../api/privilegedaccessschedule-delete.md)|None|Delete a [privilegedAccessSchedule](../resources/privilegedaccessschedule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|createdUsing|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|modifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessSchedule",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessSchedule",
  "id": "String (identifier)",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "createdUsing": "String",
  "status": "String"
}
```

