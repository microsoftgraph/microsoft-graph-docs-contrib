---
title: "privilegedAccessGroupAssignmentScheduleInstance resource type"
description: "Represents an instance of privilegedAccessGroupAssignmentSchedule."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupAssignmentScheduleInstance resource type

Namespace: microsoft.graph

Represents an instance of privilegedAccessGroupAssignmentSchedule.

Inherits from [privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessGroupAssignmentScheduleInstances](../api/privilegedaccessgroup-list-assignmentscheduleinstances.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) collection|Get a list of the [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) objects and their properties.|
<!-- |[Create privilegedAccessGroupAssignmentScheduleInstance](../api/privilegedaccessgroup-post-assignmentscheduleinstances.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md)|Create a new [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) object.| -->
|[Get privilegedAccessGroupAssignmentScheduleInstance](../api/privilegedaccessgroupassignmentscheduleinstance-get.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md)|Read the properties and relationships of a [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) object.|
<!-- |[Update privilegedAccessGroupAssignmentScheduleInstance](../api/privilegedaccessgroupassignmentscheduleinstance-update.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md)|Update the properties of a [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) object.| -->
<!-- |[Delete privilegedAccessGroupAssignmentScheduleInstance](../api/privilegedaccessgroup-delete-assignmentscheduleinstances.md)|None|Delete a [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) object.| -->
|[filterByCurrentUser](../api/privilegedaccessgroupassignmentscheduleinstance-filterbycurrentuser.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) collection|Return assignment schedule instances for privileged access for calling principal.|
|[List privilegedAccessGroupEligibilityScheduleInstance](../api/privilegedaccessgroup-list-eligibilityscheduleinstances.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) collection|Get the privilegedAccessGroupEligibilityScheduleInstance resources from the activatedUsing navigation property.|
<!-- |[Add privilegedAccessGroupEligibilityScheduleInstance](../api/privilegedaccessgroupassignmentscheduleinstance-post-activatedusing.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md)|Add activatedUsing by posting to the activatedUsing collection.| -->
<!-- |[Remove privilegedAccessGroupEligibilityScheduleInstance](../api/privilegedaccessgroupassignmentscheduleinstance-delete-activatedusing.md)|None|Remove a [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) object.| -->
<!-- |[List group](../api/user-list-joinedgroups.md)|[group](../resources/group.md) collection|Get the group resources from the group navigation property.| -->
<!-- |[Add group](../api/privilegedaccessgroupassignmentscheduleinstance-post-group.md)|[group](../resources/group.md)|Add group by posting to the group collection.| -->
<!-- |[Remove group](../api/privilegedaccessgroupassignmentscheduleinstance-delete-group.md)|None|Remove a [group](../resources/group.md) object.| -->
|[List principal](../api/user-list-createdobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/privilegedaccessgroupassignmentscheduleinstance-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[Remove principal](../api/privilegedaccessgroupassignmentscheduleinstance-delete-principal.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The id of privileged access relationship to the group. Required. The possible values are: `owner`, `member`.|
|assignmentScheduleId|String|The id of the schedule from which this instance was created. Required.|
|assignmentType|privilegedAccessGroupAssignmentType|A read-only value to represent the assignment is granted through activation, or direct assignment. Required. The possible values are: `assigned`, `activated`.|
|groupId|String|The id of the group representing the scope of the assignment. Optional.|
|memberType|privilegedAccessGroupMemberType|A read-only value to represent whether the assignment is derived from group assignment or not. Thus, it can further imply whether the assignment schedule can be managed by the caller or not. Required. The possible values are: `direct`, `group`.|
|principalId|String|The id of the principal to which the assignment is granted. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md)|When the request is to Activate an assignment, the navigation property represents the eligibility which enforces the eligible policies for the activation. Otherwise, it is null.|
|group|[group](../resources/group.md)|Property referencing the directory object that is the scope of the assignment. Provided so callers can get the directory object using $expand at the same time as getting the schedule.|
|principal|[directoryObject](../resources/directoryobject.md)|Property referencing the assigned principal. Provided so callers can get the principal using $expand at the same time as getting the schedule.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessGroupAssignmentScheduleInstance",
  "baseType": "microsoft.graph.privilegedAccessScheduleInstance",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessGroupAssignmentScheduleInstance",
  "id": "String (identifier)",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "principalId": "String",
  "accessId": "String",
  "groupId": "String",
  "memberType": "String",
  "assignmentType": "String",
  "assignmentScheduleId": "String"
}
```

