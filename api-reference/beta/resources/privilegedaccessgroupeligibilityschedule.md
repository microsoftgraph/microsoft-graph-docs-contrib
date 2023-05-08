---
title: "privilegedAccessGroupEligibilitySchedule resource type"
description: "Represents the schedule of eligible ownership and membership to groups that are governed by PIM."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupEligibilitySchedule resource type

Namespace: microsoft.graph

Represents the schedule of eligible ownership and membership to groups that are governed by PIM.

Inherits from [privilegedAccessSchedule](../resources/privilegedaccessschedule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List eligibilitySchedules](../api/privilegedaccessgroup-list-eligibilityschedules.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection|Get a list of the [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) objects and their properties.|
|[Get privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroupeligibilityschedule-get.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|Read the properties and relationships of a [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) object.|
|[filterByCurrentUser](../api/privilegedaccessgroupeligibilityschedule-filterbycurrentuser.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection|Return schedules of membership and ownership eligibility requests for the calling principal.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The identifier of the membership or ownership eligibility to the group that is governed by PIM. Required. The possible values are: `owner`, `member`.|
|createdDateTime|DateTimeOffset|When the schedule was created. Optional. Inherited from [privilegedAccessSchedule](../resources/privilegedaccessschedule.md).|
|createdUsing|String|The identifier of the access assignment or eligibility request that creates this schedule. Optional. Inherited from [privilegedAccessSchedule](../resources/privilegedaccessschedule.md).|
|groupId|String|The identifier of the group representing the scope of the membership or ownership eligibility through PIM for groups. Required.|
|id|String|The identifier of the schedule. Required. Inherited from [entity](../resources/entity.md).|
|memberType|privilegedAccessGroupMemberType|Indicates whether the assignment is derived from a group assignment. It can further imply whether the caller can manage the schedule. Required. The possible values are: `direct`, `group`, `unknownFutureValue`.|
|modifiedDateTime|DateTimeOffset|When the schedule was last modified. Optional. Inherited from [privilegedAccessSchedule](../resources/privilegedaccessschedule.md).|
|principalId|String|The identifier of the principal whose membership or ownership eligibility is granted through PIM for groups. Required.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|Represents the period of the access assignment or eligibility. The scheduleInfo can represent a single occurrence or multiple recurring instances. Required. Inherited from [privilegedAccessSchedule](../resources/privilegedaccessschedule.md).|
|status|String|The status of the access assignment or eligibility request. The possible values are: `Canceled`, `Denied`, `Failed`, `Granted`, `PendingAdminDecision`, `PendingApproval`, `PendingProvisioning`, `PendingScheduleCreation`, `Provisioned`, `Revoked`, and `ScheduleCreated`. Not nullable. Optional. Inherited from [privilegedAccessSchedule](../resources/privilegedaccessschedule.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|References the group that is the scope of the membership or ownership eligibility through PIM for groups. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|References the principal that's in the scope of this membership or ownership eligibility request to the group that's governed by PIM. Supports `$expand`.|

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

