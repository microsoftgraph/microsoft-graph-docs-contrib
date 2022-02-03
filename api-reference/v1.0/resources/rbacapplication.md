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

Role management container for unified role definitions and role assignments for Microsoft 365 role-based access control (RBAC) providers. The role assignments support only a single principal and a single scope. Currently **directory** is the only RBAC provider supported.

## Methods

None

## Properties

None

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|roleAssignments|[unifiedRoleAssignment](../resources/unifiedroleassignment.md) collection| Resource to grant access to users or groups. |
|roleDefinitions|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection| Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles. |
|roleAssignmentScheduleInstances|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) collection| Instances for active role assignments through Azure AD Privileged Identity Management.  |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.rbacApplication",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.rbacApplication"
}
```
