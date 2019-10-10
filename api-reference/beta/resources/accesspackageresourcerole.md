---
title: "accessPackageResourceRole resource type"
description: "A reference to a role defined in a resource"
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# accessPackageResourceRole resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Azure AD Entitlement Management, a access package resource role is a reference to a role defined in a resource, that can be used in an access package.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String||
|displayName|String||
|id|String| Read-only.|
|originId|String||
|originSystem|String||

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
  "@odata.type": "microsoft.graph.accessPackageResourceRole",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "originId": "String",
  "originSystem": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageResourceRole resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
