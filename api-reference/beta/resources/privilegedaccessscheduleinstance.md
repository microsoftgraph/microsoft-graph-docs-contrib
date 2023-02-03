---
title: "privilegedAccessScheduleInstance resource type"
description: "An abstract type that exposes properties relating to the instances of membership and ownership assignments and eligibilities to groups that are governed by PIM."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessScheduleInstance resource type

Namespace: microsoft.graph

A privilegedAccessScheduleInstance represents the actual provisioned instance of privileged access.
This is an abstract type.


Inherits from [entity](../resources/entity.md).

## Methods
None.
<!-- |Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessScheduleInstances](../api/privilegedaccessscheduleinstance-list.md)|[privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md) collection|Get a list of the [privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md) objects and their properties.|
|[Get privilegedAccessScheduleInstance](../api/privilegedaccessscheduleinstance-get.md)|[privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md)|Read the properties and relationships of a [privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md) object.|
|[Update privilegedAccessScheduleInstance](../api/privilegedaccessscheduleinstance-update.md)|[privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md)|Update the properties of a [privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md) object.|
|[Delete privilegedAccessScheduleInstance](../api/privilegedaccessscheduleinstance-delete.md)|None|Delete a [privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md) object.| -->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|The end date of the schedule instance. Required.|
|id|String|The id of privileged access schedule instance. Required. Inherited from [entity](../resources/entity.md).|
|startDateTime|DateTimeOffset|When this instance starts. Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessScheduleInstance",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessScheduleInstance",
  "id": "String (identifier)",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```

