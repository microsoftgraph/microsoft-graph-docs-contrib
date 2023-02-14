---
title: "privilegedAccessGroupEligibilityScheduleInstance resource type"
description: "Represents an instance of a provisioned membership or ownership assignment in PIM for groups."
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
|[List eligibilityScheduleInstances](../api/privilegedaccessgroup-list-eligibilityscheduleinstances.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) collection|Get a list of the [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) objects and their properties.|
|[Get privilegedAccessGroupEligibilityScheduleInstance](../api/privilegedaccessgroupeligibilityscheduleinstance-get.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md)|Read the properties and relationships of a [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) object.|
|[filterByCurrentUser](../api/privilegedaccessgroupeligibilityscheduleinstance-filterbycurrentuser.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) collection|Return instances of membership and ownership eligibility schedules for the calling principal.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The identifier of the membership or ownership eligibility relationship to the group. Required. The possible values are: `owner`, `member`.|
|eligibilityScheduleId|String|The identifier of the [privilegedAccessGroupEligibilitySchedule](privilegedaccessgroupeligibilityschedule.md) from which this instance was created. Required.|
|groupId|String|The identifier of the group representing the scope of the membership or ownership eligibility through PIM for groups. Optional.|
|memberType|privilegedAccessGroupMemberType|Indicates whether the assignment is derived from a group assignment. It can further imply whether the calling principal can manage the assignment schedule. Required. The possible values are: `direct`, `group`, `unknownFutureValue`.|
|principalId|String|The identifier of the principal whose membership or ownership eligibility to the group is managed through PIM for groups. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|References the group that is the scope of the membership or ownership eligibility through PIM for groups. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|References the principal that's in the scope of the membership or ownership eligibility request through the group that's governed by PIM. Supports `$expand`.|

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

