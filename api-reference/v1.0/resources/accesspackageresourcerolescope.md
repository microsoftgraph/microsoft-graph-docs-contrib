---
title: "accessPackageResourceRoleScope resource type"
description: "An access package resource role scope is a reference to both a scope within a resource, and a role in that resource."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# accessPackageResourceRoleScope resource type

Namespace: microsoft.graph

In [Azure AD entitlement management](entitlementmanagement-overview.md), an access package resource role scope is a reference to both a scope within a resource, and a role in that resource for that scope.  An access package will have access package resource role scopes for the resources in its catalog which are relevant to that access package.  When a subject receives an access package assignment, the subject will be provisioned with the role in that scope of each access package resource role scope.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List accessPackageResourceRoleScopes](../api/accesspackage-list-resourcerolescopes.md) | [accessPackageResourceRoleScope](accesspackageresourcerolescope.md) collection | Retrieve a list of **accessPackageResourceRoleScope** objects for an access package. |
| [Create accessPackageResourceRoleScope](../api/accesspackage-post-resourcerolescopes.md) | [accessPackageResourceRoleScope](accesspackageresourcerolescope.md)| Create a new **accessPackageResourceRoleScope** object for an access package. |
| [Delete accessPackageResourceRoleScope](../api/accesspackage-delete-resourcerolescopes.md) | None | Delete an **accessPackageResourceRoleScope** object from an access package. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|id|String| Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|role|[accessPackageResourceRole](accesspackageresourcerole.md)| Read-only. Nullable.|
|scope|[accessPackageResourceScope](accesspackageresourcescope.md)| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageResourceRoleScope",
  "keyProperty": "id"
}-->

```json
{
   "createdDateTime":"String (timestamp)",
   "id":"String (identifier)",
   "modifiedDateTime":"String (timestamp)",
   "accessPackageResourceRole":{
      "id":"String (identifier)",
      "displayName":"String",
      "originSystem":"String",
      "originId":"String"
   },
   "accessPackageResourceScope":{
      "id":"String (identifier)",
      "displayName":"String",
      "description":"String",
      "originId":"String (identifier)",
      "originSystem":"String"
   }
}
```
