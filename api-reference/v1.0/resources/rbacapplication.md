---
title: "rbacApplication resource type"
description: "Container for role definitions and role assignments for Microsoft 365 role-based access control (RBAC) providers"
ms.localizationpriority: medium
author: "abhijeetsinha"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# rbacApplication resource type

Namespace: microsoft.graph

Role management container for unified role definitions and role assignments for Microsoft 365 role-based access control (RBAC) providers. The role assignments support only a single principal and a single scope. Currently **directory** and **entitlementManagement** are the two RBAC providers supported.

Inherits from [entity](../resources/entity.md).

## Methods

None

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the object. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|roleAssignments|[unifiedRoleAssignment](../resources/unifiedroleassignment.md) collection| Resource to grant access to users or groups. |
|roleAssignmentScheduleInstances|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) collection| Instances for active role assignments through Azure AD Privileged Identity Management.  |
|roleAssignmentScheduleRequests|[unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) collection|**TODO: Add Description**|
|roleAssignmentSchedules|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) collection|**TODO: Add Description**|
|roleDefinitions|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection| Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles. |
|roleEligibilityScheduleInstances|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) collection|**TODO: Add Description**|
|roleEligibilityScheduleRequests|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) collection|**TODO: Add Description**|
|roleEligibilitySchedules|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) collection|**TODO: Add Description**|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.rbacApplication",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.rbacApplication",
  "id": "String (identifier)"
}
```
