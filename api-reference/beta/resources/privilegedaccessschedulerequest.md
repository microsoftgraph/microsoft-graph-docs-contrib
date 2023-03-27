---
title: "privilegedAccessScheduleRequest resource type"
description: "An abstract type that exposes properties used to configure access eligibility and assignment in privileged identity management (PIM) governance operations for groups."
author: "ilyalushnikov"
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

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|String|Represents the type of operation on the group membership or ownership assignment request. The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`. <br/><ul><li>`adminAssign`: For administrators to assign group membership or ownership to principals.</li><li>`adminRemove`: For administrators to remove principals from group membership or ownership.</li><li> `adminUpdate`: For administrators to change existing group membership or ownership assignments.</li><li>`adminExtend`: For administrators to extend expiring assignments.</li><li>`adminRenew`: For administrators to renew expired assignments.</li><li>`selfActivate`: For principals to activate their assignments.</li><li>`selfDeactivate`: For principals to deactivate their active assignments.</li></ul>|
|approvalId|String|The identifier of the approval of the request. Inherited from [request](../resources/request.md).|
|completedDateTime|DateTimeOffset|The request completion date time. Inherited from [request](../resources/request.md).|
|createdBy|[identitySet](../resources/identityset.md)|The principal that created this request. Inherited from [request](../resources/request.md). Read-only. Supports `$filter` (`eq`, `ne`, and on `null` values).|
|createdDateTime|DateTimeOffset|The request creation date time. Inherited from [request](../resources/request.md). Read-only.|
|customData|String|Free text field to define any custom data for the request. Not used. Inherited from [request](../resources/request.md).|
|id|String|The unique identifier for the **privilegedAccessGroupAssignmentScheduleRequest** object. Key, not nullable, Read-only. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|isValidationOnly|Boolean|Determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.|
|justification|String|A message provided by users and administrators when create they create the **privilegedAccessGroupAssignmentScheduleRequest** object.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The period of the group membership or ownership assignment. Recurring schedules are currently unsupported.|
|status|String|The status of the group membership or ownership assignment request. Inherited from [request](../resources/request.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|Ticket details linked to the group membership or ownership assignment request including details of the ticket number and ticket system.|

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

