---
title: "unifiedRoleAssignment resource type"
description: "A role assignment is the link between a role definition and a principal at a particular scope for granting access."
ms.localizationpriority: medium
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.subservice: "entra-directory-management"
doc_type: "resourcePageType"
toc.title: Role assignment
ms.date: 07/30/2024
---

# unifiedRoleAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a role definition assigned to a principal at a particular scope. Supported principals are users, role-assignable groups, and service principals.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/rbacapplication-list-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | Read a list of unifiedRoleAssignment objects and their properties. |
| [Create](../api/rbacapplication-post-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | Create a new unifiedRoleAssignment by posting to the roleAssignment collection. |
| [Get](../api/unifiedroleassignment-get.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | Read properties and relationships of unifiedRoleAssignment object. |
| [Delete](../api/unifiedroleassignment-delete.md) | None | Delete unifiedRoleAssignment object. |
| [List transitive role assignments](../api/rbacapplication-list-transitiveroleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) collection | Get direct and transitive unifiedRoleAssignments assigned to a specific principal. Specifying principalId is required. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|appScopeId|String|Identifier of the app specific scope when the assignment scope is app specific. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by a resource application only. For the entitlement management provider, use this property to specify a catalog. For example, `/AccessPackageCatalog/beedadfe-01d5-4025-910b-84abb9369997`. Supports `$filter` (`eq`, `in`). For example `/roleManagement/entitlementManagement/roleAssignments?$filter=appScopeId eq '/AccessPackageCatalog/{catalog id}'`.|
|directoryScopeId|String|Identifier of the [directory object](directoryobject.md) representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications, unlike app scopes that are defined and understood by a resource application only. Supports `$filter` (`eq`, `in`).|
|id|String| The unique identifier for the unifiedRoleAssignment. Key, not nullable, Read-only. |
|principalId|String| Identifier of the principal to which the assignment is granted. Supported principals are users, role-assignable groups, and service principals. Supports `$filter` (`eq`, `in`). |
|principalOrganizationId|String| Identifier of the home tenant for the principal to which the assignment is granted. |
|roleDefinitionId|String| Identifier of the unifiedRoleDefinition the assignment is for. Read-only. Supports `$filter` (`eq`, `in`). |
|resourceScope|String| The scope at which the unifiedRoleAssignment applies. This is `/` for service-wide. **DO NOT USE. This property will be deprecated soon.**|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|appScope|[appScope](appscope.md)|Read-only property with details of the app specific scope when the assignment scope is app specific. Containment entity. Supports `$expand` for the entitlement provider only.|
|directoryScope|[directoryObject](directoryobject.md)|The directory object that is the scope of the assignment. Read-only. Supports `$expand` for the directory provider.|
|principal|[directoryObject](directoryobject.md)| Referencing the assigned principal. Read-only. Supports `$expand` except for the Exchange provider.|
|roleDefinition|[unifiedRoleDefinition](unifiedroledefinition.md)|The roleDefinition the assignment is for. Supports `$expand`.|



## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.unifiedRoleAssignment",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "roleDefinitionId": "String",
  "principalId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "resourceScope": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "unifiedRoleAssignment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
