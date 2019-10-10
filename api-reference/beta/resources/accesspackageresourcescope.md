---
title: "accessPackageResourceScope resource type"
description: "In Azure AD Entitlement Management, a access package resource scope is a reference to a scope within a resource"
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# accessPackageResourceScope resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Azure AD Entitlement Management, a access package resource scope is a reference to a scope within a resource, for those resources which have multiple scopes.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String||
|displayName|String||
|id|String| Read-only.|
|isRootScope|Boolean||
|originId|String||
|originSystem|String||
|roleOriginId|String||
|url|String||

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageResource|[accessPackageResource](accesspackageresource.md)| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageResourceScope",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isRootScope": true,
  "originId": "String",
  "originSystem": "String",
  "roleOriginId": "String",
  "url": "String"
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
