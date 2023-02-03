---
title: "privilegedAccessGroupEligibilityScheduleRequest resource type"
description: "Represents requests for operations to create, update, delete, extend, and renew group membership and ownership eligibility in PIM for groups."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupEligibilityScheduleRequest resource type

Namespace: microsoft.graph

The schedule requests for operations to create, update, delete, extend, and renew an eligibility. It represents the privileged access schedule request for a group relationship eligibility.

Inherits from [privilegedAccessScheduleRequest](../resources/privilegedaccessschedulerequest.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessGroupEligibilityScheduleRequests](../api/privilegedaccessgroup-list-eligibilityschedulerequests.md)|[privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) collection|Get a list of the [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) objects and their properties.|
|[Create privilegedAccessGroupEligibilityScheduleRequest](../api/privilegedaccessgroup-post-eligibilityschedulerequests.md)|[privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md)|Create a new [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object.|
|[Get privilegedAccessGroupEligibilityScheduleRequest](../api/privilegedaccessgroupeligibilityschedulerequest-get.md)|[privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md)|Read the properties and relationships of a [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object.|
|[filterByCurrentUser](../api/privilegedaccessgroupeligibilityschedulerequest-filterbycurrentuser.md)|[privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) collection|Return eligibility schedule requests for privileged access for calling principal.|
|[cancel](../api/privilegedaccessgroupeligibilityschedulerequest-cancel.md)|None|Cancel eligibility schedule requests for privileged access for calling principal.|
|[List privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroup-list-eligibilityschedules.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection|Get the privilegedAccessGroupEligibilitySchedule resources from the targetSchedule navigation property.|

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
|group|[group](../resources/group.md)|Property referencing the directory object that is the scope of the assignment. Provided so callers can get the directory object using $expand at the same time as getting the schedule.|
|principal|[directoryObject](../resources/directoryobject.md)|Property referencing the assigned principal. Provided so callers can get the principal using $expand at the same time as getting the schedule.|
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

