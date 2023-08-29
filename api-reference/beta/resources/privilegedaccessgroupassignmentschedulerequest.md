---
title: "privilegedAccessGroupAssignmentScheduleRequest resource type"
description: "Represents requests for operations to create, update, delete, extend, and renew a membership or ownership assignment in PIM for groups."
author: "ilyalushnikov"
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
|accessId|privilegedAccessGroupRelationships|The identifier of a membership or ownership assignment relationship to the group. Required. The possible values are: `owner`, `member`, `unknownFutureValue`.|
|action|String|Represents the type of operation on the group membership or ownership assignment request. The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`. <br/><ul><li>`adminAssign`: For administrators to assign group membership or ownership to principals.</li><li>`adminRemove`: For administrators to remove principals from group membership or ownership.</li><li> `adminUpdate`: For administrators to change existing group membership or ownership assignments.</li><li>`adminExtend`: For administrators to extend expiring assignments.</li><li>`adminRenew`: For administrators to renew expired assignments.</li><li>`selfActivate`: For principals to activate their assignments.</li><li>`selfDeactivate`: For principals to deactivate their active assignments.</li></ul>|
|approvalId|String|The identifier of the approval of the request. Inherited from [request](../resources/request.md).|
|completedDateTime|DateTimeOffset|The request completion date time. Inherited from [request](../resources/request.md).|
|createdBy|[identitySet](../resources/identityset.md)|The principal that created this request. Inherited from [request](../resources/request.md). Read-only. Supports `$filter` (`eq`, `ne`, and on `null` values).|
|createdDateTime|DateTimeOffset|The request creation date time. Inherited from [request](../resources/request.md). Read-only.|
|customData|String|Free text field to define any custom data for the request. Not used. Inherited from [request](../resources/request.md).|
|groupId|String|The identifier of the group representing the scope of the membership or ownership assignment through PIM for groups. Required.|
|id|String|The unique identifier for the **privilegedAccessGroupAssignmentScheduleRequest** object. Key, not nullable, Read-only. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|isValidationOnly|Boolean|Determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.|
|justification|String|A message provided by users and administrators when they create the **privilegedAccessGroupAssignmentScheduleRequest** object.|
|principalId|String|The identifier of the principal whose membership or ownership assignment to the group is managed through PIM for groups. Supports `$filter` (`eq`, `ne`).|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The period of the group membership or ownership assignment. Recurring schedules are currently unsupported.|
|status|String|The status of the group membership or ownership assignment request. Inherited from [request](../resources/request.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|targetScheduleId|String| The identifier of the schedule that's created from the membership or ownership assignment request. Supports `$filter` (`eq`, `ne`).|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|Ticket details linked to the group membership or ownership assignment request including details of the ticket number and ticket system.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|When the request activates a membership or ownership assignment in PIM for groups, this object represents the eligibility policy for the group. Otherwise, it is `null`. Supports `$expand`.|
|group|[group](../resources/group.md)|References the group that is the scope of the membership or ownership assignment request through PIM for groups. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|References the principal that's in the scope of this membership or ownership assignment request through the group that's governed by PIM. Supports `$expand`.|
|targetSchedule|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|Schedule created by this request. Supports `$expand`.|

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

