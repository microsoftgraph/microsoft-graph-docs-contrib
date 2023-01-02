---
title: "privilegedAccessGroup resource type"
description: "The navigation entity which contains the privileged access group APIs."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessGroup resource type

Namespace: microsoft.graph

The navigation entity which contains the privileged access group APIs.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
<!-- |[List privilegedAccessGroups](../api/privilegedaccessroot-list-group.md)|[privilegedAccessGroup](../resources/privilegedaccessgroup.md) collection|Get a list of the [privilegedAccessGroup](../resources/privilegedaccessgroup.md) objects and their properties.| -->
<!-- |[Create privilegedAccessGroup](../api/privilegedaccessroot-post-group.md)|[privilegedAccessGroup](../resources/privilegedaccessgroup.md)|Create a new [privilegedAccessGroup](../resources/privilegedaccessgroup.md) object.| -->
<!-- |[Get privilegedAccessGroup](../api/privilegedaccessgroup-get.md)|[privilegedAccessGroup](../resources/privilegedaccessgroup.md)|Read the properties and relationships of a [privilegedAccessGroup](../resources/privilegedaccessgroup.md) object.| -->
<!-- |[Update privilegedAccessGroup](../api/privilegedaccessgroup-update.md)|[privilegedAccessGroup](../resources/privilegedaccessgroup.md)|Update the properties of a [privilegedAccessGroup](../resources/privilegedaccessgroup.md) object.| -->
<!-- |[Delete privilegedAccessGroup](../api/privilegedaccessroot-delete-group.md)|None|Delete a [privilegedAccessGroup](../resources/privilegedaccessgroup.md) object.| -->
|[List assignmentScheduleInstances](../api/privilegedaccessgroup-list-assignmentscheduleinstances.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) collection|Get the privilegedAccessGroupAssignmentScheduleInstance resources from the assignmentScheduleInstances navigation property.|
<!-- |[Create privilegedAccessGroupAssignmentScheduleInstance](../api/privilegedaccessgroup-post-assignmentscheduleinstances.md)|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md)|Create a new privilegedAccessGroupAssignmentScheduleInstance object.| -->
|[List assignmentScheduleRequests](../api/privilegedaccessgroup-list-assignmentschedulerequests.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) collection|Get the privilegedAccessGroupAssignmentScheduleRequest resources from the assignmentScheduleRequests navigation property.|
|[Create privilegedAccessGroupAssignmentScheduleRequest](../api/privilegedaccessgroup-post-assignmentschedulerequests.md)|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md)|Create a new privilegedAccessGroupAssignmentScheduleRequest object.|
|[List assignmentSchedules](../api/privilegedaccessgroup-list-assignmentschedules.md)|[privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) collection|Get the privilegedAccessGroupAssignmentSchedule resources from the assignmentSchedules navigation property.|
<!-- |[Create privilegedAccessGroupAssignmentSchedule](../api/privilegedaccessgroup-post-assignmentschedules.md)|[privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md)|Create a new privilegedAccessGroupAssignmentSchedule object.| -->
|[List eligibilityScheduleInstances](../api/privilegedaccessgroup-list-eligibilityscheduleinstances.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) collection|Get the privilegedAccessGroupEligibilityScheduleInstance resources from the eligibilityScheduleInstances navigation property.|
<!-- |[Create privilegedAccessGroupEligibilityScheduleInstance](../api/privilegedaccessgroup-post-eligibilityscheduleinstances.md)|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md)|Create a new privilegedAccessGroupEligibilityScheduleInstance object.| -->
|[List eligibilityScheduleRequests](../api/privilegedaccessgroup-list-eligibilityschedulerequests.md)|[privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) collection|Get the privilegedAccessGroupEligibilityScheduleRequest resources from the eligibilityScheduleRequests navigation property.|
|[Create privilegedAccessGroupEligibilityScheduleRequest](../api/privilegedaccessgroup-post-eligibilityschedulerequests.md)|[privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md)|Create a new privilegedAccessGroupEligibilityScheduleRequest object.|
|[List eligibilitySchedules](../api/privilegedaccessgroupeligibilityschedulerequest-list-targetschedule.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection|Get the privilegedAccessGroupEligibilitySchedule resources from the eligibilitySchedules navigation property.|
<!-- |[Create privilegedAccessGroupEligibilitySchedule](../api/privilegedaccessgroup-post-eligibilityschedules.md)|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md)|Create a new privilegedAccessGroupEligibilitySchedule object.| -->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the privileged access group. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignmentScheduleInstances|[privilegedAccessGroupAssignmentScheduleInstance](../resources/privilegedaccessgroupassignmentscheduleinstance.md) collection|The instances of assignment schedules to activate a just-in-time privileged access.|
|assignmentScheduleRequests|[privilegedAccessGroupAssignmentScheduleRequest](../resources/privilegedaccessgroupassignmentschedulerequest.md) collection|The schedule requests for operations to create, update, delete, extend, and renew an assignment.|
|assignmentSchedules|[privilegedAccessGroupAssignmentSchedule](../resources/privilegedaccessgroupassignmentschedule.md) collection|The assignment schedules to activate a just-in-time privileged access.|
|eligibilityScheduleInstances|[privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) collection|The instances of eligibility schedules to activate a just-in-time privileged access.|
|eligibilityScheduleRequests|[privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) collection|The schedule requests for operations to create, update, delete, extend, and renew an eligibility.|
|eligibilitySchedules|[privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection|The eligibility schedules to activate a just-in-time privileged access.|

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

