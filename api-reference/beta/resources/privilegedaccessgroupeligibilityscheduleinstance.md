---
title: "privilegedAccessGroupEligibilityScheduleInstance resource type"
description: "Represents an instance of a provisioned membership or ownership eligibility in PIM for Groups."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Eligibility schedule instance
ms.date: 07/22/2024
---

# privilegedAccessGroupEligibilityScheduleInstance resource type

Namespace: microsoft.graph

Represents an instance of a provisioned membership or ownership eligibility in PIM for Groups.

Inherits from [privilegedAccessScheduleInstance](../resources/privilegedaccessscheduleinstance.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/privilegedaccessgroup-list-eligibilityscheduleinstances.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) collection|Get a list of the [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) objects and their properties.|
|[Get](../api/privilegedaccessgroupeligibilityscheduleinstance-get.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md)|Read the properties and relationships of a [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) object.|
|[Filter by current user](../api/privilegedaccessgroupeligibilityscheduleinstance-filterbycurrentuser.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) collection|Return instances of membership and ownership eligibility schedules for the calling principal.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The identifier of the membership or ownership eligibility relationship to the group. Required. The possible values are: `owner`, `member`. Supports `$filter` (`eq`).|
|eligibilityScheduleId|String|The identifier of the [privilegedAccessGroupEligibilitySchedule](privilegedaccessgroupeligibilityschedule.md) from which this instance was created. Required. Supports `$filter` (`eq`, `ne`).|
|endDateTime|DateTimeOffset|When the schedule instance ends. Required.|
|groupId|String|The identifier of the group representing the scope of the membership or ownership eligibility through PIM for Groups. Required. Supports `$filter` (`eq`).|
|id|String|The identifier of the access assignment schedule instance. Required. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|memberType|privilegedAccessGroupMemberType|Indicates whether the assignment is derived from a group assignment. It can further imply whether the calling principal can manage the assignment schedule. Required. The possible values are: `direct`, `group`, `unknownFutureValue`. Supports `$filter` (`eq`).|
|principalId|String|The identifier of the principal whose membership or ownership eligibility to the group is managed through PIM for Groups. Required. Supports `$filter` (`eq`).|
|startDateTime|DateTimeOffset|When this instance starts. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|References the group that is the scope of the membership or ownership eligibility through PIM for Groups. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|References the principal that's in the scope of the membership or ownership eligibility request through the group that's governed by PIM. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
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

