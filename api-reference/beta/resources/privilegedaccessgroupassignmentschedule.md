---
title: "privilegedAccessGroupAssignmentSchedule resource type"
description: "Represents the schedule of privileged access to a group relationship assignment."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupAssignmentSchedule resource type

Namespace: microsoft.graph

Represents the schedule of privileged access to a group relationship assignment.

Inherits from [privilegedAccessSchedule](../resources/privilegedaccessschedule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessGroupAssignmentSchedules](../api/privilegedaccessgroup-list-assignmentschedules.md)|[privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) collection|Get a list of the [privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) objects and their properties.|
<!-- |[Create privilegedAccessGroupAssignmentSchedule](../api/privilegedaccessgroup-post-assignmentschedules.md)|[privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md)|Create a new [privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) object.| -->
|[Get privilegedAccessGroupAssignmentSchedule](../api/privilegedaccessgroupassignmentschedule-get.md)|[privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md)|Read the properties and relationships of a [privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) object.|
<!-- |[Update privilegedAccessGroupAssignmentSchedule](../api/privilegedaccessgroupassignmentschedule-update.md)|[privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md)|Update the properties of a [privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) object.| -->
<!-- |[Delete privilegedAccessGroupAssignmentSchedule](../api/privilegedaccessgroup-delete-assignmentschedules.md)|None|Delete a [privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) object.| -->
|[filterByCurrentUser](../api/privilegedaccessgroupassignmentschedule-filterbycurrentuser.md)|[privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) collection|Return assignment schedules for privileged access for calling principal.|
|[List privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupeligibilityschedulerequest-list-targetschedule.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection|Get the privilegedAccessGroupEligibilitySchedule resources from the activatedUsing navigation property.|
<!-- |[Add privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupassignmentschedule-post-activatedusing.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|Add activatedUsing by posting to the activatedUsing collection.| -->
<!-- |[Remove privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupassignmentschedule-delete-activatedusing.md)|None|Remove a [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) object.| -->
<!-- |[List group](../api/user-list-joinedgroups.md)|[group](../resources/group.md) collection|Get the group resources from the group navigation property.| -->
<!-- |[Add group](../api/privilegedaccessgroupassignmentschedule-post-group.md)|[group](../resources/group.md)|Add group by posting to the group collection.| -->
<!-- |[Remove group](../api/privilegedaccessgroupassignmentschedule-delete-group.md)|None|Remove a [group](../resources/group.md) object.| -->
|[List principal](../api/user-list-createdobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/privilegedaccessgroupassignmentschedule-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[Remove principal](../api/privilegedaccessgroupassignmentschedule-delete-principal.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The id of privileged access relationship to the group. Required. The possible values are: `owner`, `member`.|
|assignmentType|privilegedAccessGroupAssignmentType|A read-only value to represent the assignment is granted through activation, or direct assignment. Required. The possible values are: `assigned`, `activated`.|
|groupId|String|The id of the group representing the scope of the assignment. Optional.|
|memberType|privilegedAccessGroupMemberType|A read-only value to represent whether the assignment is derived from group assignment or not. Thus, it can further imply whether the privileged access schedule can be managed by the caller or not. Required. The possible values are: `direct`, `group`.|
|principalId|String|The id of the principal to which the assignment is granted. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|When the request is to Activate an assignment, the navigation property represents the eligibility which enforces the eligible policies for the activation. Otherwise, it is null.|
|group|[group](../resources/group.md)|Property referencing the directory object that is the scope of the assignment. Provided so callers can get the directory object using $expand at the same time as getting the schedule.|
|principal|[directoryObject](../resources/directoryobject.md)|Property referencing the assigned principal. Provided so callers can get the principal using $expand at the same time as getting the schedule.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessGroupAssignmentSchedule",
  "baseType": "microsoft.graph.privilegedAccessSchedule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessGroupAssignmentSchedule",
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
  "memberType": "String",
  "assignmentType": "String"
}
```

