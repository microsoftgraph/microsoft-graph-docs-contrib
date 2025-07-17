---
title: "privilegedAccessGroupAssignmentScheduleInstance resource type"
description: "Represents an instance of a provisioned membership or ownership assignment in PIM for Groups."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Assignment schedule instance
ms.date: 06/12/2024
---

# privilegedAccessGroupAssignmentScheduleInstance resource type

Namespace: microsoft.graph

Represents an instance of a provisioned membership or ownership assignment in PIM for Groups.

Inherits from [privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/privilegedaccessgroup-list-assignmentscheduleinstances.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) collection|Get a list of the [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) objects and their properties.|
|[Get](../api/privilegedaccessgroupassignmentscheduleinstance-get.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md)|Read the properties and relationships of a [privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) object.|
|[Filter by current user](../api/privilegedaccessgroupassignmentscheduleinstance-filterbycurrentuser.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) collection|Return instances of membership and ownership assignment schedules for the calling principal.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The identifier of the membership or ownership assignment relationship to the group. Required. The possible values are: `owner`, `member`,  `unknownFutureValue`. Supports `$filter` (`eq`).|
|assignmentScheduleId|String|The identifier of the [privilegedAccessGroupAssignmentSchedule](privilegedaccessgroupassignmentschedule.md) from which this instance was created. Required. Supports `$filter` (`eq`, `ne`).|
|assignmentType|privilegedAccessGroupAssignmentType|Indicates whether the membership or ownership assignment is granted through activation of an eligibility or through direct assignment. Required. The possible values are: `assigned`, `activated`, `unknownFutureValue`. Supports `$filter` (`eq`).|
|endDateTime|DateTimeOffset|When the schedule instance ends. Required.|
|groupId|String|The identifier of the group representing the scope of the membership or ownership assignment through PIM for Groups. Optional. Supports `$filter` (`eq`).|
|id|String|The identifier of the access assignment schedule instance. Required. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|memberType|privilegedAccessGroupMemberType| Indicates whether the assignment is derived from a group assignment. It can further imply whether the caller can manage the assignment schedule. Required. The possible values are: `direct`, `group`, `unknownFutureValue`. Supports `$filter` (`eq`).|
|principalId|String|The identifier of the principal whose membership or ownership assignment to the group is managed through PIM for Groups. Required. Supports `$filter` (`eq`).|
|startDateTime|DateTimeOffset|When this instance starts. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md)|When the request activates a membership or ownership in PIM for Groups, this object represents the eligibility request for the group. Otherwise, it's `null`.|
|group|[group](../resources/group.md)|References the group that is the scope of the membership or ownership assignment through PIM for Groups. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|References the principal that's in the scope of the membership or ownership assignment request through the group that's governed by PIM. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
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

