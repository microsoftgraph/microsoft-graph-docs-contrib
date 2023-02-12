---
title: "privilegedAccessGroupAssignmentScheduleRequest resource type"
description: "Represents requests for operations to create, update, delete, extend, and renew a membership or ownership assignment in PIM for groups. The privilegedAccessGroupAssignmentScheduleRequest object is also created when an authorized principal requests a just-in-time activation of an eligible access assignment to a group's membership or ownership."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupAssignmentScheduleRequest resource type

Namespace: microsoft.graph

Represents requests for operations to create, update, delete, extend, and renew a membership or ownership assignment in PIM for groups. The privilegedAccessGroupAssignmentScheduleRequest object is also created when an authorized principal requests a just-in-time activation of an eligible access assignment to a group's membership or ownership.

Inherits from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List assignmentScheduleRequests](../api/privilegedaccessgroup-list-assignmentschedulerequests.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) collection|Get a list of the [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) objects and their properties.|
|[Create assignmentScheduleRequest](../api/privilegedaccessgroup-post-assignmentschedulerequests.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md)|Create a new [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.|
|[Get privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroupassignmentschedulerequest-get.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md)|Read the properties and relationships of a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.|
|[filterByCurrentUser](../api/privilegedaccessgroupassignmentschedulerequest-filterbycurrentuser.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) collection|Return assignment schedule requests for the calling principal.|
|[cancel](../api/privilegedaccessgroupassignmentschedulerequest-cancel.md)|None|Cancel a pending request for a membership or ownership assignment to a group.|

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

