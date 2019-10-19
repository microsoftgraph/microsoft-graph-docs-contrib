---
title: "personName resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "People"
doc_type: "resourcePageType"
---

# personName resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get personName](../api/personname-get.md) | [personName](personname.md) | Read properties and relationships of personName object. |
| [Update](../api/personname-update.md) | [personName](personname.md) | Update personName object. |
| [Delete](../api/personname-delete.md) | None | Delete personName object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String||
|first|String||
|initials|String||
|languageTag|String||
|last|String||
|maiden|String||
|middle|String||
|nickname|String||
|pronunciation|[yomiPersonName](yomipersonname.md)||
|suffix|String||
|title|String||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.personName",
  "baseType": ""
}-->

```json
{
  "displayName": "String",
  "first": "String",
  "initials": "String",
  "languageTag": "String",
  "last": "String",
  "maiden": "String",
  "middle": "String",
  "nickname": "String",
  "pronunciation": {"@odata.type": "microsoft.graph.yomiPersonName"},
  "suffix": "String",
  "title": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "personName resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->