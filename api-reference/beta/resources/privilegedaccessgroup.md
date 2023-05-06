---
title: "privilegedAccessGroup resource type"
description: "The entry point for all resources related to Privileged Identity Management (PIM) for groups."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroup resource type

Namespace: microsoft.graph

The entry point for all resources related to Privileged Identity Management (PIM) for groups.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of an object in PIM governance for a group. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignmentScheduleInstances|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) collection|The instances of assignment schedules to activate a just-in-time access.|
|assignmentScheduleRequests|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) collection|The schedule requests for operations to create, update, delete, extend, and renew an assignment.|
|assignmentSchedules|[privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) collection|The assignment schedules to activate a just-in-time access.|
|eligibilityScheduleInstances|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) collection|The instances of eligibility schedules to activate a just-in-time access.|
|eligibilityScheduleRequests|[privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) collection|The schedule requests for operations to create, update, delete, extend, and renew an eligibility.|
|eligibilitySchedules|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection|The eligibility schedules to activate a just-in-time access.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessGroup",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessGroup",
  "id": "String (identifier)"
}
```

