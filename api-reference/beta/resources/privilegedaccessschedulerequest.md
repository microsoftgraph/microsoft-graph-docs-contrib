---
title: "privilegedAccessScheduleRequest resource type"
description: "An abstract type that exposes properties used to configure access eligibility and assignment in privileged identity management (PIM) governance operations for groups."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessScheduleRequest resource type

Namespace: microsoft.graph

An abstract type that exposes properties used to configure access eligibility and assignment in privileged identity management (PIM) governance operations for groups.

This is an abstract type from which the [privilegedAccessGroupAssignmentScheduleRequest](privilegedaccessgroupassignmentschedulerequest.md) and [privilegedAccessGroupEligibilityScheduleRequest](privilegedaccessgroupeligibilityschedulerequest.md) resource types inherit.

Inherits from [request](../resources/request.md).

## Methods
None.
<!-- |Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessScheduleRequests](../api/privilegedaccessschedulerequest-list.md)|[privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md) collection|Get a list of the [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md) objects and their properties.|
|[Get privilegedAccessScheduleRequest](../api/privilegedaccessschedulerequest-get.md)|[privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md)|Read the properties and relationships of a [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md) object.|
|[Update privilegedAccessScheduleRequest](../api/privilegedaccessschedulerequest-update.md)|[privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md)|Update the properties of a [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md) object.|
|[Delete privilegedAccessScheduleRequest](../api/privilegedaccessschedulerequest-delete.md)|None|Delete a [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md) object.| -->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|scheduleRequestActions|Represents the asynchronized operation the request is carrying for the assignment. The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`. Required.|
|isValidationOnly|Boolean|Represents whether the request just intends to evaluate the payload without writing to the system. This can be used in UI to enable or disable scenarios. Default value is false. Optional.|
|justification|String|Represents the justification the caller provided. Optional.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|Represents the schedule details that the request is trying to change for the privileged access eligibility. The scheduleInfo can represent a single occurrence, or multiple recurring instances. Optional.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|Represents the ticket information provided by the caller for tracking purpose, if it is required. Optional.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessScheduleRequest",
  "baseType": "microsoft.graph.request",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessScheduleRequest",
  "id": "String (identifier)",
  "status": "String",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "approvalId": "String",
  "customData": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "action": "String",
  "isValidationOnly": "Boolean",
  "justification": "String",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "ticketInfo": {
    "@odata.type": "microsoft.graph.ticketInfo"
  }
}
```

