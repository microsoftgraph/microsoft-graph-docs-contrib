---
title: "privilegedAccessGroupAssignmentSchedule resource type"
description: "Represents the schedule of membership or ownership assignments to groups that are governed by PIM."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroupAssignmentSchedule resource type

Namespace: microsoft.graph

Represents the schedule of membership or ownership assignments to groups that are governed by PIM.

Inherits from [privilegedAccessSchedule](../resources/privilegedaccessschedule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List assignmentSchedules](../api/privilegedaccessgroup-list-assignmentschedules.md)|[privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) collection|Get a list of the [privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) objects and their properties.|
|[Get privilegedAccessGroupAssignmentSchedule](../api/privilegedaccessgroupassignmentschedule-get.md)|[privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md)|Read the properties and relationships of a [privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) object.|
|[filterByCurrentUser](../api/privilegedaccessgroupassignmentschedule-filterbycurrentuser.md)|[privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) collection|Return schedules of membership and ownership assignment requests for the calling principal.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The identifier of the membership or ownership assignment to the group that is governed by PIM. Required. The possible values are: `owner`, `member`, `unknownFutureValue`.|
|assignmentType|privilegedAccessGroupAssignmentType|Indicates whether the membership or ownership assignment for the principal is granted through activation or direct assignment. Required. The possible values are: `assigned`, `activated`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|When the schedule was created. Optional.|
|createdUsing|String|The identifier of the access assignment or eligibility request that created this schedule. Optional.|
|groupId|String|The identifier of the group representing the scope of the membership or ownership assignment through PIM for groups. Required.|
|id|String|The identifier of the schedule. Required. Inherited from [entity](../resources/entity.md).|
|memberType|privilegedAccessGroupMemberType|Indicates whether the assignment is derived from a direct group assignment or through a transitive assignment. The possible values are: `direct`, `group`, `unknownFutureValue`.|
|modifiedDateTime|DateTimeOffset|When the schedule was last modified. Optional.|
|principalId|String|The identifier of the principal whose membership or ownership assignment is granted through PIM for groups. Required.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|Represents the period of the access assignment or eligibility. The scheduleInfo can represent a single occurrence or multiple recurring instances. Required.|
|status|String|The status of the access assignment or eligibility request. The possible values are: `Canceled`, `Denied`, `Failed`, `Granted`, `PendingAdminDecision`, `PendingApproval`, `PendingProvisioning`, `PendingScheduleCreation`, `Provisioned`, `Revoked`, and `ScheduleCreated`. Not nullable. Optional.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|When the request activates an ownership or membership assignment in PIM for groups, this object represents the eligibility relationship. Otherwise, it is `null`. Supports `$expand`.|
|group|[group](../resources/group.md)|References the group that is the scope of the membership or ownership assignment through PIM for groups. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|References the principal that's in the scope of this membership or ownership assignment request to the group that's governed by PIM. Supports `$expand`.|

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

