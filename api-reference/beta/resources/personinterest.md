---
title: "personInterest resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "People"
doc_type: "resourcePageType"
---

# personInterest resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get personInterest](../api/personinterest-get.md) | [personInterest](personinterest.md) | Read properties and relationships of personInterest object. |
| [Update](../api/personinterest-update.md) | [personInterest](personinterest.md) | Update personInterest object. |
| [Delete](../api/personinterest-delete.md) | None | Delete personInterest object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|categories|String collection||
|description|String||
|displayName|String||
|webUrl|String||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.personInterest",
  "baseType": ""
}-->

```json
{
  "categories": ["String"],
  "description": "String",
  "displayName": "String",
  "webUrl": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "personInterest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->