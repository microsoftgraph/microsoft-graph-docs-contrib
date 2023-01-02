---
title: "privilegedAccessGroupAssignmentScheduleRequest resource type"
description: "The schedule requests for operations to create, update, delete, extend, and renew an assignment."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupAssignmentScheduleRequest resource type

Namespace: microsoft.graph

The schedule requests for operations to create, update, delete, extend, and renew an assignment.

Inherits from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessGroupAssignmentScheduleRequests](../api/privilegedaccessgroup-list-assignmentschedulerequests.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) collection|Get a list of the [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) objects and their properties.|
|[Create privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroup-post-assignmentschedulerequests.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md)|Create a new [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.|
|[Get privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroupassignmentschedulerequest-get.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md)|Read the properties and relationships of a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.|
|[Update privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroupassignmentschedulerequest-update.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md)|Update the properties of a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.|
|[Delete privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroup-delete-assignmentschedulerequests.md)|None|Delete a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.|
|[filterByCurrentUser](../api/privilegedaccessgroupassignmentschedulerequest-filterbycurrentuser.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) collection|Return assignment schedule request for privileged access for calling principal.|
|[cancel](../api/privilegedaccessgroupassignmentschedulerequest-cancel.md)|None|Cancel pending request for privileged access group assignment.|
|[List privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupeligibilityschedulerequest-list-targetschedule.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection|Get the privilegedAccessGroupEligibilitySchedule resources from the activatedUsing navigation property.|
|[Add privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupassignmentschedulerequest-post-activatedusing.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|Add activatedUsing by posting to the activatedUsing collection.|
|[Remove privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupassignmentschedulerequest-delete-activatedusing.md)|None|Remove a [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) object.|
|[List group](../api/user-list-joinedgroups.md)|[group](../resources/group.md) collection|Get the group resources from the group navigation property.|
|[Add group](../api/privilegedaccessgroupassignmentschedulerequest-post-group.md)|[group](../resources/group.md)|Add group by posting to the group collection.|
|[Remove group](../api/privilegedaccessgroupassignmentschedulerequest-delete-group.md)|None|Remove a [group](../resources/group.md) object.|
|[List principal](../api/user-list-createdobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/privilegedaccessgroupassignmentschedulerequest-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[Remove principal](../api/privilegedaccessgroupassignmentschedulerequest-delete-principal.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|
|[List privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupeligibilityschedulerequest-list-targetschedule.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection|Get the privilegedAccessGroupEligibilitySchedule resources from the targetSchedule navigation property.|
|[Add privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupassignmentschedulerequest-post-targetschedule.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|Add targetSchedule by posting to the targetSchedule collection.|
|[Remove privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupassignmentschedulerequest-delete-targetschedule.md)|None|Remove a [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The id of privileged access relationship to the group. Required. The possible values are: `owner`, `member`.|
|groupId|String|The id of the group representing the scope of the assignment. Optional.|
|principalId|String|The id of the principal to which the assignment is granted. Required.|
|targetScheduleId|String|The id of schedule which gets created from request. Optional.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|When the request is to Activate an assignment, the navigation property represents the eligibility which enforces the eligible policies for the activation. Otherwise, it is null.|
|group|[group](../resources/group.md)|Property referencing the directory object that is the scope of the assignment. Provided so callers can get the directory object using $expand at the same time as getting the schedule.|
|principal|[directoryObject](../resources/directoryobject.md)|Property referencing the assigned principal. Provided so callers can get the principal using $expand at the same time as getting the schedule.|
|targetSchedule|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|Schedule created by this request.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest",
  "baseType": "microsoft.graph.privilegedAccessScheduleRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest",
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
  },
  "principalId": "String",
  "accessId": "String",
  "groupId": "String",
  "targetScheduleId": "String"
}
```

