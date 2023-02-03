---
title: "unifiedRoleAssignment resource type"
description: "A role assignment is the link between a role definition and a principal at a particular scope for the purpose of granting access."
ms.localizationpriority: medium
author: "DougKirschner"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# unifiedRoleAssignment resource type

Namespace: microsoft.graph

A role assignment is used to grant access to resources. It represents a role definition assigned to a principal (for example, a user or a role-assignable group) at a particular scope.

Inherits from [entity](entity.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[List unifiedRoleAssignments](../api/rbacapplication-list-roleassignments.md)|[unifiedRoleAssignment](../resources/unifiedroleassignment.md) collection| Get a list of the [unifiedRoleAssignment](../resources/unifiedroleassignment.md) objects and their properties.|
|[Create unifiedRoleAssignment](../api/rbacapplication-post-roleassignments.md)|[unifiedRoleAssignment](../resources/unifiedroleassignment.md)|Create a new [unifiedRoleAssignment](../resources/unifiedroleassignment.md) object.|
|[Get unifiedRoleAssignment](../api/unifiedroleassignment-get.md)|[unifiedRoleAssignment](../resources/unifiedroleassignment.md)|Read the properties and relationships of an [unifiedRoleAssignment](../resources/unifiedroleassignment.md) object.|
|[Delete unifiedRoleAssignment](../api/unifiedroleassignment-delete.md)|None|Deletes an [unifiedRoleAssignment](../resources/unifiedroleassignment.md) object.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|appScopeId|String|Identifier of the app-specific scope when the assignment scope is app-specific.  Either this property or **directoryScopeId** is required. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units. Supports $filter (`eq`, `in`).|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment.  Either this property or **appScopeId** is required. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only. Supports $filter (`eq`, `in`).|
|id|String| The unique identifier for the role assignment. Key, not nullable, Read-only. Inherited from [entity](entity.md).|
|roleDefinitionId|String| Identifier of the role definition the assignment is for. Read only. Supports $filter (`eq`, `in`).|
|principalId|String| Identifier of the principal to which the assignment is granted. Supports $filter (`eq`, `in`).|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|appScope|[appScope](appscope.md)|Read-only property with details of the app specific scope when the assignment scope is app specific. Containment entity. Supports `$expand`.|
|directoryScope|[directoryObject](directoryobject.md)|The directory object that is the scope of the assignment. Read-only. Supports `$expand`.|
|principal|[directoryObject](directoryobject.md)| Referencing the assigned principal. Read-only. Supports `$expand`.|
|roleDefinition|[unifiedRoleDefinition](unifiedroledefinition.md)|The roleDefinition the assignment is for.  Supports `$expand`. roleDefinition.Id will be auto expanded.


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleAssignment",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.unifiedRoleAssignment",
  "id": "String (identifier)",
  "appScopeId": "String",
  "condition": "String",
  "directoryScopeId": "String",
  "principalId": "String",
  "roleDefinitionId": "String"
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
