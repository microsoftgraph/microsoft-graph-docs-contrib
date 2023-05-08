---
title: "privilegedAccessSchedule resource type"
description: "An abstract type that exposes properties relating to the schedule of assigned and eligible ownership and membership to groups that are governed by PIM."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessSchedule resource type

Namespace: microsoft.graph

An abstract type that exposes properties relating to the schedule of assigned and eligible membership and ownership to groups that are governed by PIM. This abstract type is inherited by the following derived types:
+ [privilegedAccessGroupAssignmentSchedule](privilegedaccessgroupassignmentschedule.md)
+ [privilegedAccessGroupEligibilitySchedule](privilegedaccessgroupeligibilityschedule.md)


Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|When the schedule was created. Optional.|
|createdUsing|String|The identifier of the access assignment or eligibility request that created this schedule. Optional.|
|id|String|The identifier of the schedule. Required. Inherited from [entity](../resources/entity.md).|
|modifiedDateTime|DateTimeOffset|When the schedule was last modified. Optional.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|Represents the period of the access assignment or eligibility. The scheduleInfo can represent a single occurrence or multiple recurring instances. Required.|
|status|String|The status of the access assignment or eligibility request. The possible values are: `Canceled`, `Denied`, `Failed`, `Granted`, `PendingAdminDecision`, `PendingApproval`, `PendingProvisioning`, `PendingScheduleCreation`, `Provisioned`, `Revoked`, and `ScheduleCreated`. Not nullable. Optional.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessSchedule",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessSchedule",
  "id": "String (identifier)",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "createdUsing": "String",
  "status": "String"
}
```

