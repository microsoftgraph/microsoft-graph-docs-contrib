---
title: "accessPackageResourceScope resource type"
description: "In Microsoft Entra entitlement management, an access package resource scope is a reference to a scope within a resource."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# accessPackageResourceScope resource type

Namespace: microsoft.graph

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), an access package resource scope is a reference to a scope within a resource, for those resources that have multiple scopes.

You can determine the access package resource scope, for a resource that has roles already added to an access package, by using [list accessPackageResourceRoleScopes](../api/accesspackage-list-resourcerolescopes.md) to return a collection of [accessPackageResourceRoleScope](accesspackageresourcerolescope.md) objects.

If the resource is in an access package catalog but hasn't yet had its roles added to an access package, you can determine the access package resource scope by using [list accessPackageResources](../api/accesspackagecatalog-list-resources.md) and including `$expand=scopes` in the query.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String|The description of the scope.|
|displayName|String|The display name of the scope.|
|id|String| Read-only.|
|isRootScope|Boolean|True if the scopes are arranged in a hierarchy and this is the top or root scope of the resource.|
|originId|String|The unique identifier for the scope in the resource as defined in the origin system.|
|originSystem|String|The origin system for the scope.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|resource|[accessPackageResource](accesspackageresource.md)| Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageResourceScope",
  "keyProperty": "id"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isRootScope": true,
  "originId": "String",
  "originSystem": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageResourceScope resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
