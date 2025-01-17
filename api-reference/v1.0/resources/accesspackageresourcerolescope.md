---
title: "accessPackageResourceRoleScope resource type"
description: "An access package resource role scope is a reference to both a scope within a resource, and a role in that resource."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# accessPackageResourceRoleScope resource type

Namespace: microsoft.graph

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), an access package resource role scope is a reference to both a scope within a resource, and a role in that resource for that scope. An access package has access package resource role scopes for the resources in its catalog that are relevant to that access package. When a subject receives an access package assignment, the subject is provisioned with the role in that scope of each access package resource role scope.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/accesspackage-list-resourcerolescopes.md) | [accessPackageResourceRoleScope](accesspackageresourcerolescope.md) collection | Retrieve a list of **accessPackageResourceRoleScope** objects for an access package. |
| [Create](../api/accesspackage-post-resourcerolescopes.md) | [accessPackageResourceRoleScope](accesspackageresourcerolescope.md)| Create a new **accessPackageResourceRoleScope** object for an access package. |
| [Delete](../api/accesspackage-delete-resourcerolescopes.md) | None | Delete an **accessPackageResourceRoleScope** object from an access package. |

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

The following JSON representation shows the resource type.

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
   "role":{
      "id":"String (identifier)",
      "displayName":"String",
      "originSystem":"String",
      "originId":"String"
   },
   "scope":{
      "id":"String (identifier)",
      "displayName":"String",
      "description":"String",
      "originId":"String (identifier)",
      "originSystem":"String"
   }
}
```
