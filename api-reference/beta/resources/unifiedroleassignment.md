---
title: "unifiedRoleAssignment resource type"
description: "A role assignment is the link between a role definition and a principal at a particular scope for the purpose of granting access."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# unifiedRoleAssignment resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A unified role assignment is the link between a role definition and a principal at a particular scope for the purpose of granting access. Access is granted by creating a role assignment, and access is revoked by removing a role assignment. Role assignments cannot be updated (using PATCH or PUT).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get unifiedRoleAssignment](../api/unifiedroleassignment-get.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | Read properties and relationships of unifiedRoleAssignment object. |
| [List principal](../api/unifiedroleassignment-list-principal.md) | [directoryObject](directoryobject.md) collection | Get a principal object collection. |
| [Create unifiedRoleAssignment](../api/rbacapplication-post-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | Create a new unifiedRoleAssignment by posting to the roleAssignment collection. |
| [List roleDefinition](../api/unifiedroleassignment-list-roledefinition.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | Get a unifiedRoleDefinition object collection. |
| [Delete](../api/unifiedroleassignment-delete.md) | None | Delete unifiedRoleAssignment object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| The unique identifier for the role assignment. Key, not nullable, Read-only. |
|principalId|String| Objectid of the principal to which the assignment is granted. |
|resourceScope|String| The scope at which the role assignment applies. This is "/" for service-wide. |
|roleDefinitionId|String| The roleDefinition the assignment is for. Read only. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.unifiedRoleAssignment",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "principalId": "String",
  "resourceScope": "String",
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
