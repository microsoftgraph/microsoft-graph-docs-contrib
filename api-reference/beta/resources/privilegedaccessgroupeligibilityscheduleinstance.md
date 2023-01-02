---
title: "privilegedAccessGroupEligibilityScheduleInstance resource type"
description: "The instances of eligibility schedules to activate a just-in-time privileged access."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupEligibilityScheduleInstance resource type

Namespace: microsoft.graph

The instances of eligibility schedules to activate a just-in-time privileged access. It represents an instance of privilegedAccessGroupEligibilitySchedule.

Inherits from [privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessGroupEligibilityScheduleInstances](../api/privilegedaccessgroup-list-eligibilityscheduleinstances.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) collection|Get a list of the [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) objects and their properties.|
<!-- |[Create privilegedAccessGroupEligibilityScheduleInstance](../api/privilegedaccessgroup-post-eligibilityscheduleinstances.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md)|Create a new [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) object.| -->
|[Get privilegedAccessGroupEligibilityScheduleInstance](../api/privilegedaccessgroupeligibilityscheduleinstance-get.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md)|Read the properties and relationships of a [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) object.|
<!-- |[Update privilegedAccessGroupEligibilityScheduleInstance](../api/privilegedaccessgroupeligibilityscheduleinstance-update.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md)|Update the properties of a [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) object.| -->
<!-- |[Delete privilegedAccessGroupEligibilityScheduleInstance](../api/privilegedaccessgroup-delete-eligibilityscheduleinstances.md)|None|Delete a [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) object.| -->
|[filterByCurrentUser](../api/privilegedaccessgroupeligibilityscheduleinstance-filterbycurrentuser.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) collection|Return eligibility schedule instances for privileged access for calling principal.|
<!-- |[List group](../api/user-list-joinedgroups.md)|[group](../resources/group.md) collection|Get the group resources from the group navigation property.| -->
<!-- |[Add group](../api/privilegedaccessgroupeligibilityscheduleinstance-post-group.md)|[group](../resources/group.md)|Add group by posting to the group collection.| -->
<!-- |[Remove group](../api/privilegedaccessgroupeligibilityscheduleinstance-delete-group.md)|None|Remove a [group](../resources/group.md) object.| -->
|[List principal](../api/user-list-createdobjects.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/privilegedaccessgroupeligibilityscheduleinstance-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[Remove principal](../api/privilegedaccessgroupeligibilityscheduleinstance-delete-principal.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The id of privileged access relationship to the group. Required. The possible values are: `owner`, `member`.|
|eligibilityScheduleId|String|The id of the schedule from which this instance was created. Required.|
|groupId|String|The id of the group representing the scope of the assignment. Optional.|
|memberType|privilegedAccessGroupMemberType|A read-only value to represent whether the assignment is derived from group assignment or not. Thus, it can further imply whether the assignment schedule can be managed by the caller or not. Required. The possible values are: `direct`, `group`.|
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
  "@odata.type": "microsoft.graph.privilegedAccessGroupEligibilityScheduleInstance",
  "baseType": "microsoft.graph.privilegedAccessScheduleInstance",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilityScheduleInstance",
  "id": "String (identifier)",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "principalId": "String",
  "accessId": "String",
  "groupId": "String",
  "memberType": "String",
  "eligibilityScheduleId": "String"
}
```

