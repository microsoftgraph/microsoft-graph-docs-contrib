---
title: "privilegedAccessGroupAssignmentScheduleInstance resource type"
description: "Represents an instance of a provisioned membership or ownership assignment in PIM for groups."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupAssignmentScheduleInstance resource type

Namespace: microsoft.graph

Represents an instance of a provisioned membership or ownership assignment in PIM for groups.

Inherits from [privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List assignmentScheduleInstances](../api/privilegedaccessgroup-list-assignmentscheduleinstances.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) collection|Get a list of the [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) objects and their properties.|
|[Get privilegedAccessGroupAssignmentScheduleInstance](../api/privilegedaccessgroupassignmentscheduleinstance-get.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md)|Read the properties and relationships of a [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) object.|
|[filterByCurrentUser](../api/privilegedaccessgroupassignmentscheduleinstance-filterbycurrentuser.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) collection|Return instances of membership and ownership assignment schedules for the calling principal.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The identifier of the membership or ownership assignment relationship to the group. Required. The possible values are: `owner`, `member`,  `unknownFutureValue`.|
|assignmentScheduleId|String|The identifier of the [privilegedAccessGroupAssignmentSchedule](privilegedaccessgroupassignmentschedule.md) from which this instance was created. Required.|
|assignmentType|privilegedAccessGroupAssignmentType|Indicates whether the membership or ownership assignment is granted through activation of an eligibility or through direct assignment. Required. The possible values are: `assigned`, `activated`, `unknownFutureValue`.|
|endDateTime|DateTimeOffset|When the schedule instance ends. Required.|
|groupId|String|The identifier of the group representing the scope of the membership or ownership assignment through PIM for groups. Optional.|
|id|String|The identifier of the access assignment schedule instance. Required. Inherited from [entity](../resources/entity.md).|
|memberType|privilegedAccessGroupMemberType| Indicates whether the assignment is derived from a group assignment. It can further imply whether the caller can manage the assignment schedule. Required. The possible values are: `direct`, `group`, `unknownFutureValue`.|
|principalId|String|The identifier of the principal whose membership or ownership assignment to the group is managed through PIM for groups. Required.|
|startDateTime|DateTimeOffset|When this instance starts. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md)|When the request activates a membership or ownership in PIM for groups, this object represents the eligibility request for the group. Otherwise, it is `null`.|
|group|[group](../resources/group.md)|References the group that is the scope of the membership or ownership assignment through PIM for groups. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|References the principal that's in the scope of the membership or ownership assignment request through the group that's governed by PIM. Supports `$expand`.|

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

