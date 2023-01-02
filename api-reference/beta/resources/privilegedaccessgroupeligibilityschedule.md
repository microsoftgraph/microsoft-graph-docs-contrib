---
title: "privilegedAccessGroupEligibilitySchedule resource type"
description: "The eligibility schedules to activate a just-in-time privileged access."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupEligibilitySchedule resource type

Namespace: microsoft.graph

The eligibility schedules to activate a just-in-time privileged access. It represents the schedule of privileged access to a group relationship eligibility.

Inherits from [privilegedAccessSchedule](../resources/privilegedaccessschedule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessGroupEligibilitySchedules](../api/privilegedaccessgroupeligibilityschedulerequest-list-targetschedule.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection|Get a list of the [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) objects and their properties.|
<!-- |[Create privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupeligibilityschedulerequest-post-targetschedule.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|Create a new [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) object.| -->
|[Get privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupeligibilityschedule-get.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|Read the properties and relationships of a [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) object.|
<!-- |[Update privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupeligibilityschedule-update.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|Update the properties of a [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) object.| -->
<!-- |[Delete privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupeligibilityschedulerequest-delete-targetschedule.md)|None|Delete a [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) object.| -->
|[filterByCurrentUser](../api/privilegedaccessgroupeligibilityschedule-filterbycurrentuser.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection|Return eligibility schedule for privileged access for calling principal.|
<!-- |[List group](../api/user-list-joinedgroups.md)|[group](../resources/group.md) collection|Get the group resources from the group navigation property.| -->
<!-- |[Add group](../api/privilegedaccessgroupeligibilityschedule-post-group.md)|[group](../resources/group.md)|Add group by posting to the group collection.| -->
<!-- |[Remove group](../api/privilegedaccessgroupeligibilityschedule-delete-group.md)|None|Remove a [group](../resources/group.md) object.| -->
|[List principal](../api/user-list-createdobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/privilegedaccessgroupeligibilityschedule-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[Remove principal](../api/privilegedaccessgroupeligibilityschedule-delete-principal.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|*The id of privileged access relationship to the group. Required. The possible values are: `owner`, `member`.|
|groupId|String|The id of the group representing the scope of the assignment. Optional.|
|memberType|privilegedAccessGroupMemberType|A read-only value to represent the assignment is derived from group assignment or not. Thus it can further imply whether the privileged access schedule can be managed by the caller or not. Required. The possible values are: `direct`, `group`.|
|principalId|String|The id of the principal to which the assignment is granted. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|Property referencing the directory object that is the scope of the assignment. Provided so callers can get the directory object using $expand at the same time as getting the schedule.|
|principal|[directoryObject](../resources/directoryobject.md)|Property referencing the assigned principal. Provided so callers can get the principal using $expand at the same time as getting the schedule.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessGroupEligibilitySchedule",
  "baseType": "microsoft.graph.privilegedAccessSchedule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilitySchedule",
  "id": "String (identifier)",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "createdUsing": "String",
  "status": "String",
  "principalId": "String",
  "accessId": "String",
  "groupId": "String",
  "memberType": "String"
}
```

