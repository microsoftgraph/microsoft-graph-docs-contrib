---
title: "unifiedRbacApplication resource type"
description: "Represents a role management container for unified role definitions and role assignments for Microsoft 365 RBAC providers."
ms.localizationpriority: medium
author: "bili1"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# rbacApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a role management container for unified role definitions and role assignments for role-based access control (RBAC) providers in Microsoft 365. This is a shared entity meant to replace [rbacApplication](./rbacapplication.md). Currently only Exchange RBAC applications are supported.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create unifiedRoleAssignment](../api/rbacapplication-post-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | Create a new **unifiedRoleAssignment** by posting to the **roleAssignments** collection. |
| [List roleAssignments](../api/rbacapplication-list-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) collection | Get a **unifiedRoleAssignment** object collection. Only specific instances can be queried, by filtering on **roleDefitionId** or **principalId**. |
| [List transitiveRoleAssignments](../api/rbacapplication-list-transitiveroleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) collection | Get direct and transitive **unifiedRoleAssignments** assigned to a specific principal. Specifying **principalId** is required. |
| [Create unifiedRoleDefinition](../api/rbacapplication-post-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Create a new **unifiedRoleDefinition** by posting to the **roleDefinitions** collection. |
| [List roleDefinitions](../api/rbacapplication-list-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | Get a **unifiedRoleDefinition** object collection. |

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|resourceNamespaces|[unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) collection|Resource that represents a collection of related actions.|
|roleAssignments|[unifiedRoleAssignment](../resources/unifiedroleassignment.md) collection| Resource to grant access to users or groups. |
|roleDefinitions|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection| Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles. |
|transitiveRoleAssignments|[unifiedRoleAssignment](../resources/unifiedroleassignment.md) collection| Resource to grant access to users or groups that are transitive. |


## JSON representation

None.


