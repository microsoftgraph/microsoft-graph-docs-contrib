---
title: "rbacApplication resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# rbacApplication resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List rbacApplications](../api/rbacapplication-list.md)|[rbacApplication](../resources/rbacapplication.md) collection|Get a list of the [rbacApplication](../resources/rbacapplication.md) objects and their properties.|
|[Create rbacApplication](../api/rbacapplication-create.md)|[rbacApplication](../resources/rbacapplication.md)|Create a new [rbacApplication](../resources/rbacapplication.md) object.|
|[Get rbacApplication](../api/rbacapplication-get.md)|[rbacApplication](../resources/rbacapplication.md)|Read the properties and relationships of a [rbacApplication](../resources/rbacapplication.md) object.|
|[Update rbacApplication](../api/rbacapplication-update.md)|[rbacApplication](../resources/rbacapplication.md)|Update the properties of a [rbacApplication](../resources/rbacapplication.md) object.|
|[Delete rbacApplication](../api/rbacapplication-delete.md)|None|Deletes a [rbacApplication](../resources/rbacapplication.md) object.|
|[roleSchedules](../api/rbacapplication-roleschedules.md)|[unifiedRoleScheduleBase](../resources/unifiedroleschedulebase.md) collection|**TODO: Add Description**|
|[roleScheduleInstances](../api/rbacapplication-rolescheduleinstances.md)|[unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) collection|**TODO: Add Description**|
|[List roleAssignmentRequests](../api/rbacapplication-list-roleassignmentrequests.md)|[unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) collection|Get the unifiedRoleAssignmentRequest resources from the roleAssignmentRequests navigation property.|
|[Create unifiedRoleAssignmentRequest](../api/rbacapplication-post-roleassignmentrequests.md)|[unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md)|Create a new unifiedRoleAssignmentRequest object.|
|[List roleAssignmentScheduleInstances](../api/rbacapplication-list-roleassignmentscheduleinstances.md)|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) collection|Get the unifiedRoleAssignmentScheduleInstance resources from the roleAssignmentScheduleInstances navigation property.|
|[Create unifiedRoleAssignmentScheduleInstance](../api/rbacapplication-post-roleassignmentscheduleinstances.md)|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md)|Create a new unifiedRoleAssignmentScheduleInstance object.|
|[List roleAssignmentSchedules](../api/rbacapplication-list-roleassignmentschedules.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) collection|Get the unifiedRoleAssignmentSchedule resources from the roleAssignmentSchedules navigation property.|
|[Create unifiedRoleAssignmentSchedule](../api/rbacapplication-post-roleassignmentschedules.md)|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md)|Create a new unifiedRoleAssignmentSchedule object.|
|[List roleEligibilityRequests](../api/rbacapplication-list-roleeligibilityrequests.md)|[unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md) collection|Get the unifiedRoleEligibilityRequest resources from the roleEligibilityRequests navigation property.|
|[Create unifiedRoleEligibilityRequest](../api/rbacapplication-post-roleeligibilityrequests.md)|[unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md)|Create a new unifiedRoleEligibilityRequest object.|
|[List roleEligibilityScheduleInstances](../api/rbacapplication-list-roleeligibilityscheduleinstances.md)|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) collection|Get the unifiedRoleEligibilityScheduleInstance resources from the roleEligibilityScheduleInstances navigation property.|
|[Create unifiedRoleEligibilityScheduleInstance](../api/rbacapplication-post-roleeligibilityscheduleinstances.md)|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md)|Create a new unifiedRoleEligibilityScheduleInstance object.|
|[List roleEligibilitySchedules](../api/rbacapplication-list-roleeligibilityschedules.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) collection|Get the unifiedRoleEligibilitySchedule resources from the roleEligibilitySchedules navigation property.|
|[Create unifiedRoleEligibilitySchedule](../api/rbacapplication-post-roleeligibilityschedules.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|Create a new unifiedRoleEligibilitySchedule object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|roleAssignmentRequests|[unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) collection|**TODO: Add Description**|
|roleAssignmentScheduleInstances|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) collection|**TODO: Add Description**|
|roleAssignmentSchedules|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) collection|**TODO: Add Description**|
|roleEligibilityRequests|[unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md) collection|**TODO: Add Description**|
|roleEligibilityScheduleInstances|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) collection|**TODO: Add Description**|
|roleEligibilitySchedules|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.rbacApplication",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.rbacApplication"
}
```

