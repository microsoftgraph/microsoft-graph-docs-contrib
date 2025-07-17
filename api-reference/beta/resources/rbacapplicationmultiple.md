---
title: "rbacApplicationMultiple resource type"
description: "Role management navigation property"
ms.localizationpriority: medium
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.subservice: "entra-directory-management"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# rbacApplicationMultiple resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Role management container for unified role definitions and role assignments for Microsoft 365 RBAC providers that support multiple principals and multiple scopes in a single role assignment. This is different from the [rbacApplication](rbacapplication.md) resource type.

Cloud PC and Microsoft Intune are examples of such RBAC providers. A role assignment in these providers can have an array of principals and an array of scope groups.

For role definitions, the cloud PC provider currently supports the [list](../api/rbacapplication-list-roledefinitions.md) operation but not the [create](../api/rbacapplication-post-roledefinitions.md).

Inherits from [entity](entity.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create role definition](../api/rbacapplication-post-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Create a new unifiedRoleDefinition by posting to the roleDefinitions collection. |
| [List role definitions](../api/rbacapplication-list-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | Get a unifiedRoleDefinition object collection. |
| [Create](../api/rbacapplicationmultiple-post-roleassignments.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) | Create a new unifiedRoleAssignmentMultiple by posting to the roleAssignments collection. |
| [List](../api/rbacapplicationmultiple-list-roleassignments.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) collection | Get unifiedRoleAssignmentMultiple object collection. |

## Properties

None

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|resourceNamespaces|[unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) collection|Resource that represents a collection of related actions.|
|roleAssignments|[unifiedRoleAssignmentMultiple](../resources/unifiedroleassignmentmultiple.md) collection| Resource to grant access to users or groups. |
|roleDefinitions|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection| Resource representing the roles allowed by RBAC providers and the permissions assigned to the roles. |

## JSON representation

None

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rbacApplicationMultiple resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


