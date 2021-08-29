---
title: "rbacApplication resource type"
description: "Container for role definitions and role assignments for Microsoft 365 role-based access control (RBAC) providers"
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# rbacApplication resource type

Namespace: microsoft.graph

Role management container for unified role definitions and role assignments for Microsoft 365 role-based access control (RBAC) providers. The role assignments support only a single principal and a single scope. Currently **directory** is the only RBAC provider supported.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List roleDefinitions](../api/rbacapplication-list-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | Get a unifiedRoleDefinition object collection. |
| [Create unifiedRoleAssignment](../api/rbacapplication-post-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | Create a new unifiedRoleAssignment by posting to the roleAssignments collection. |
Commit suggestion 
Add suggestion to batch

## Properties

None

## Relationships

None

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

