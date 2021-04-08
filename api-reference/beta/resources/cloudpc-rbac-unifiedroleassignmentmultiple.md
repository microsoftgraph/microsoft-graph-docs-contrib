---
title: "cloudpc unifiedRoleAssignmentMultiple resource type"
description: "A role assignment is the link between a role definition and a principal at a particular scope for the purpose of granting access."
localization_priority: Normal
author: "jiajyang"
ms.prod: "cloud-pc"
doc_type: "resourcePageType"
---

# unifiedRoleAssignmentMultiple resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A unifiedRoleAssignmentMultiple is used to grant access to resources. It represents a role definition assigned to an array of principals (typically a group) over an array of scope. You can create a role assignment with multiple principals and multiple scopes.

Providing either **directoryScopeIds** or **appScopeIds** is required.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get unifiedRoleAssignmentMultiple](../api/unifiedroleassignmentmultiple-get.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) | Read properties and relationships of unifiedRoleAssignmentMultiple object. |
| [Create unifiedRoleAssignmentMultiple](../api/unifiedroleassignmentmultiple-post.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) | Create a new unifiedRoleAssignmentMultiple by posting to the roleAssignment collection. |
| [Update unifiedRoleAssignmentMultiple](../api/unifiedroleassignmentmultiple-update.md) | [unifiedRoleAssignmentMultiple](unifiedroleassignmentmultiple.md) | Update an existing unifiedRoleAssignmentMultiple object. |
| [Delete unifiedRoleAssignmentMultiple](../api/unifiedroleassignmentmultiple-delete.md) | None | Delete unifiedRoleAssignmentMultiple object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| id | String | The unique identifier for the unifiedRoleAssignmentMultiple. Key, not nullable, Read-only. |
| displayName | String | Name of the role assignment. Required. |
| description | String | Description of the role assignment. |
| roleDefinitionId | String | ID of the unifiedRoleDefinition the assignment is for. |
| principalIds | String collection | Objectids of the principals to which the assignment is granted. |
| directoryScopeIds | String collection | Ids of the directory objects representing the scopes of the assignment. The scopes of an assignment determine the set of resources for which the principals have been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. App scopes are scopes that are defined and understood by this application only. |
| appScopeIds | String collection | Ids of the app specific scopes when the assignment scopes are app specific. The scopes of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use "/" for tenant-wide scope. App scopes are scopes that are defined and understood by this application only. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentMultiple",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "roleDefinitionId": "String",
  "principalIds": ["string"],
  "directoryScopeIds": ["string"],
  "appScopeIds": ["string"],
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "unifiedRoleAssignmentMultiple resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


