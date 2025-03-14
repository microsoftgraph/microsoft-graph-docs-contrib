---
title: "accessPackageResourceRoleScope resource type"
description: "An access package resource role scope is a reference to both a scope within a resource, and a role in that resource."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 05/24/2024
---

# accessPackageResourceRoleScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), an access package resource role scope is a reference to both a scope within a resource, and a role in that resource for that scope. An access package has access package resource role scopes for the resources in its catalog that are relevant to that access package. When a subject receives an access package assignment, the subject is provisioned with the role in that scope of each access package resource role scope.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/accesspackage-list-accesspackageresourcerolescopes.md) | [accessPackageResourceRoleScope](accesspackageresourcerolescope.md) collection | Retrieve a list of **accessPackageResourceRoleScope** objects for an access package. |
| [Create](../api/accesspackage-post-accesspackageresourcerolescopes.md) |[accessPackageResourceRoleScope](accesspackageresourcerolescope.md)  | Create a new **accessPackageResourceRoleScope** object for an access package. |
| [Delete](../api/accesspackage-delete-accesspackageresourcerolescopes.md) | None | Create a new **accessPackageResourceRoleScope** object for an access package. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdBy|String|Read-only.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|id|String| Read-only.|
|modifiedBy|String|Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageResourceRole|[accessPackageResourceRole](accesspackageresourcerole.md)| Read-only. Nullable. Supports `$expand`.|
|accessPackageResourceScope|[accessPackageResourceScope](accesspackageresourcescope.md)| Read-only. Nullable.|

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
   "createdBy":"String",
   "createdDateTime":"String (timestamp)",
   "id":"String (identifier)",
   "modifiedBy":"String",
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

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageResourceRoleScope resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
