---
title: "privilegedAccessGroupEligibilityScheduleRequest resource type"
description: "Represents requests for operations to create, update, delete, extend, and renew group membership and ownership eligibility in PIM for groups."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupEligibilityScheduleRequest resource type

Namespace: microsoft.graph

Represents requests for operations to create, update, delete, extend, and renew group membership and ownership eligibility in PIM for groups.

Inherits from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List eligibilityScheduleRequests](../api/privilegedaccessgroup-list-eligibilityschedulerequests.md)|[privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) collection|Get a list of the [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) objects and their properties.|
|[Create eligibilityScheduleRequest](../api/privilegedaccessgroup-post-eligibilityschedulerequests.md)|[privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md)|Create a new [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object.|
|[Get privilegedAccessGroupEligibilityScheduleRequest](../api/privilegedaccessgroupeligibilityschedulerequest-get.md)|[privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md)|Read the properties and relationships of a [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object.|
|[filterByCurrentUser](../api/privilegedaccessgroupeligibilityschedulerequest-filterbycurrentuser.md)|[privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) collection|Return eligibility schedule requests for the calling principal.|
|[cancel](../api/privilegedaccessgroupeligibilityschedulerequest-cancel.md)|None|Cancel membership or ownership eligibility schedule requests for the calling principal.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The identifier of membership or ownership eligibility relationship to the group. Required. The possible values are: `owner`, `member`, `unknownFutureValue`.|
|action|String|Represents the type of operation on the group membership or ownership eligibility assignment request. The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`. <br/><ul><li>`adminAssign`: For administrators to assign group membership or ownership eligibility to principals.</li><li>`adminRemove`: For administrators to remove principals from group membership or ownership eligibilities.</li><li> `adminUpdate`: For administrators to change existing eligible assignments.</li><li>`adminExtend`: For administrators to extend expiring eligible assignments.</li><li>`adminRenew`: For administrators to renew expired eligible assignments.</li><li>`selfActivate`: For principals to activate their eligible assignments.</li><li>`selfDeactivate`: For principals to deactivate their eligible assignments.</li></ul>|
|approvalId|String|The identifier of the approval of the request. Inherited from [request](../resources/request.md).|
|completedDateTime|DateTimeOffset|The request completion date time. Inherited from [request](../resources/request.md).|
|createdBy|[identitySet](../resources/identityset.md)|The principal that created this request. Inherited from [request](../resources/request.md). Read-only. Supports `$filter` (`eq`, `ne`, and on `null` values).|
|createdDateTime|DateTimeOffset|The request creation date time. Inherited from [request](../resources/request.md). Read-only.|
|customData|String|Free text field to define any custom data for the request. Not used. Inherited from [request](../resources/request.md).|
|groupId|String|The identifier of the group representing the scope of the membership and ownership eligibility through PIM for groups. Required.|
|id|String|The unique identifier for the **privilegedAccessGroupEligibilityScheduleRequest** object. Key, not nullable, read-only. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|isValidationOnly|Boolean|Determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.|
|justification|String|A message provided by users and administrators when they create the **privilegedAccessGroupEligibilityScheduleRequest** object.|
|principalId|String|The identifier of the principal whose membership or ownership eligibility to the group is managed through PIM for groups. Required.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The period of the group membership or ownership assignment. Recurring schedules are currently unsupported.|
|status|String|The status of the group membership or ownership assignment request. Inherited from [request](../resources/request.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|targetScheduleId|String|The identifier of the schedule that's created from the eligibility request. Optional.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|Ticket details linked to the group membership or ownership assignment request including details of the ticket number and ticket system.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|References the group that is the scope of the membership or ownership eligibility request through PIM for groups. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|References the principal that's in the scope of the membership or ownership eligibility request through the group that's governed by PIM. Supports `$expand`.|
|targetSchedule|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|Schedule created by this request.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest",
  "baseType": "microsoft.graph.privilegedAccessScheduleRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest",
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

