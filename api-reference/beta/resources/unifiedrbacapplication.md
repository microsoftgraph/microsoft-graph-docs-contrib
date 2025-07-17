---
title: "unifiedRbacApplication resource type"
description: "Represents a role management container for unified role definitions and role assignments for Microsoft 365 RBAC providers."
ms.localizationpriority: medium
author: "cubika"
ms.subservice: "entra-directory-management"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# unifiedRbacApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a role management container for unified role definitions and role assignments for role-based access control (RBAC) providers in Microsoft 365. This is a shared entity meant to replace [rbacApplication](./rbacapplication.md). Currently only Exchange RBAC applications are supported.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create role assignment](../api/rbacapplication-post-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | Create a new [unifiedRoleAssignment](../resources/unifiedroleassignment.md) object. |
| [List role assignment](../api/rbacapplication-list-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) collection | Get a list of [unifiedRoleAssignment](../resources/unifiedroleassignment.md) objects for an RBAC provider. You can only query specific instances by filtering on **roleDefinitionId**, **principalId** or **appScopeId**. |
| [List transitive role assignments](../api/rbacapplication-list-transitiveroleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) collection | Get the list of direct and transitive [unifiedRoleAssignment](../resources/unifiedroleassignment.md) objects for a specific principal. This API requires the **principalId** in a request. |
| [Create role definition](../api/rbacapplication-post-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Create a new [unifiedRoleDefinition](../resources/unifiedroledefinition.md) object for an RBAC provider. |
| [List role definitions](../api/rbacapplication-list-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | Get a list of [unifiedRoleDefinition](../resources/unifiedroledefinition.md) objects for an RBAC provider. |
| [List](../api/unifiedrbacapplication-list-customappscopes.md) | [customAppScope](customappscope.md) collection | Get a list of [customAppScope](../resources/customappscope.md) objects for an RBAC provider. |

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|customAppScopes|[customAppScope](../resources/customappscope.md) collection| Workload-specific scope object that represents the resources for which the principal has been granted access. |
|resourceNamespaces|[unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) collection|Resource that represents a collection of related actions.|
|roleAssignments|[unifiedRoleAssignment](../resources/unifiedroleassignment.md) collection| Resource to grant access to users or groups. |
|roleDefinitions|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection| The roles allowed by RBAC providers and the permissions assigned to the roles. |
|transitiveRoleAssignments|[unifiedRoleAssignment](../resources/unifiedroleassignment.md) collection| Resource to grant access to users or groups that are transitive. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.unifiedRbacApplication"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRbacApplication"
}
```
