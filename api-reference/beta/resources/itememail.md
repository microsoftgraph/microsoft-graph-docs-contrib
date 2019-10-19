---
title: "itemEmail resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "People"
doc_type: "resourcePageType"
---

# itemEmail resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get itemEmail](../api/itememail-get.md) | [itemEmail](itememail.md) | Read properties and relationships of itemEmail object. |
| [Update](../api/itememail-update.md) | [itemEmail](itememail.md) | Update itemEmail object. |
| [Delete](../api/itememail-delete.md) | None | Delete itemEmail object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|address|String||
|displayName|String||
|type|string| Possible values are: `unknown`, `work`, `personal`, `main`, `other`.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.itemEmail",
  "baseType": ""
}-->

```json
{
  "address": "String",
  "displayName": "String",
  "type": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "itemEmail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->