---
title: "privilegedAccessGroupAssignmentScheduleRequest resource type"
description: "**TODO: Add Description**"
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupAssignmentScheduleRequest resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessGroupAssignmentScheduleRequests](../api/privilegedaccessgroup-list-assignmentschedulerequests.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) collection|Get a list of the [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) objects and their properties.|
|[Create privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroup-post-assignmentschedulerequests.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md)|Create a new [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.|
|[Get privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroupassignmentschedulerequest-get.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md)|Read the properties and relationships of a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.|
|[Update privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroupassignmentschedulerequest-update.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md)|Update the properties of a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.|
|[Delete privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroup-delete-assignmentschedulerequests.md)|None|Delete a [privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) object.|
|[filterByCurrentUser](../api/privilegedaccessgroupassignmentschedulerequest-filterbycurrentuser.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) collection|**TODO: Add Description**|
|[cancel](../api/privilegedaccessgroupassignmentschedulerequest-cancel.md)|None|**TODO: Add Description**|
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
|accessId|privilegedAccessGroupRelationships|**TODO: Add Description**.The possible values are: `owner`, `member`, `unknownFutureValue`.|
|action|scheduleRequestActions|**TODO: Add Description** Inherited from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md).The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`, `selfExtend`, `selfRenew`, `unknownFutureValue`.|
|approvalId|String|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|customData|String|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|groupId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isValidationOnly|Boolean|**TODO: Add Description** Inherited from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md).|
|justification|String|**TODO: Add Description** Inherited from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md).|
|principalId|String|**TODO: Add Description**|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|**TODO: Add Description** Inherited from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md).|
|status|String|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|targetScheduleId|String|**TODO: Add Description**|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|**TODO: Add Description** Inherited from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|**TODO: Add Description**|
|group|[group](../resources/group.md)|**TODO: Add Description**|
|principal|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|
|targetSchedule|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|**TODO: Add Description**|

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

