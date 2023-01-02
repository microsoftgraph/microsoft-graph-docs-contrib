---
title: "privilegedAccessSchedule resource type"
description: "A privilegedAccessSchedule represents the schedule of privileged access."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessSchedule resource type

Namespace: microsoft.graph

A privilegedAccessSchedule represents the schedule of privileged access. The schedule object will drive the creation and deletion of privilegedAccessScheduleInstance.

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
|createdDateTime|DateTimeOffset|When the schedule was created. Optional.|
|createdUsing|String|The id of the request which creates the schedule. Optional.|
|id|String|The id of privileged access schedule. Required. Inherited from [entity](../resources/entity.md).|
|modifiedDateTime|DateTimeOffset|When the schedule was last modified. Optional.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|Represents the schedule details of the privileged access assignment. The scheduleInfo can represent a single occurrence, or multiple recurring instances. Required.|
|status|String|The status of the privileged access schedule eligibility request. The possible values are: `Canceled`, `Denied`, `Failed`, `Granted`, `PendingAdminDecision`, `PendingApproval`, `PendingProvisioning`, `PendingScheduleCreation`, `Provisioned`, `Revoked`, and `ScheduleCreated`. Not nullable. Supports $filter (eq, ne). Optional.|

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

