---
title: "rbacApplication resource type"
description: "Role management container for unified role definitions and role assignments for Microsoft 365 RBAC providers."
ms.localizationpriority: medium
author: "abhijeetsinha"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# rbacApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Role management container for unified role definitions and role assignments for Microsoft 365 RBAC providers. Currently directory and entitlement management are the only RBAC applications supported.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create unifiedRoleAssignment](../api/rbacapplication-post-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | Create a new unifiedRoleAssignment by posting to the roleAssignments collection. |
| [List roleAssignments](../api/rbacapplication-list-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) collection | Get a unifiedRoleAssignment object collection. Only specific instances can be queried, by filtering on roleDefitionId or principalId. |
| [Create unifiedRoleDefinition](../api/rbacapplication-post-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Create a new unifiedRoleDefinition by posting to the roleDefinitions collection. |
| [List roleDefinitions](../api/rbacapplication-list-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | Get a unifiedRoleDefinition object collection. |
| [roleSchedules](../api/rbacapplication-roleschedules.md) | [unifiedRoleScheduleBase](unifiedroleschedulebase.md) collection | Function to retrieve a collection of unifiedRoleScheduleBase objects. |
| [roleScheduleInstances](../api/rbacapplication-rolescheduleinstances.md) | [unifiedRoleScheduleInstanceBase](unifiedrolescheduleinstancebase.md) collection | Function to retrieve a collection of unifiedRoleScheduleInstanceBase objects.  |

## Properties

None

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|roleAssignments|[unifiedRoleAssignment](../resources/unifiedroleassignment.md) collection| Resource to grant access to users or groups. |
|roleDefinitions|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection| Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles. |
|roleAssignmentApprovals|[approval](../resources/approval.md) collection| Decisions associated with a role assignment approval.|
|roleAssignmentScheduleInstances|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) collection| Instances for active role assignments through Azure AD Privileged Identity Management.  |
|roleAssignmentScheduleRequests|[unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) collection| Requests for active role assignments through Azure AD Privileged Identity Management. |
|roleAssignmentSchedules|[unifiedRoleAssignmentSchedule](../resources/unifiedRoleAssignmentSchedule.md) collection| Schedule for active role assignments through Azure AD Privileged Identity Management. |
|roleEligibilityScheduleInstances|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedRoleEligibilityScheduleInstance.md) collection| Instances of eligible role assignments through Azure AD Privileged Identity Management. |
|roleEligibilityScheduleRequests|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedRoleEligibilityScheduleRequest.md) collection| Requests for eligible role assignments through Azure AD Privileged Identity Management. |
|roleEligibilitySchedules|[unifiedRoleEligibilitySchedule](../resources/unifiedRoleEligibilitySchedule.md) collection| Schedule for eligible role assignments through Azure AD Privileged Identity Management. |



## JSON representation

None

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rbacApplication resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


