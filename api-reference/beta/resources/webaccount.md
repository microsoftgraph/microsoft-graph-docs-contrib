---
title: "webAccount resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "People"
doc_type: "resourcePageType"
---

# webAccount resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get webAccount](../api/webaccount-get.md) | [webAccount](webaccount.md) | Read properties and relationships of webAccount object. |
| [Update](../api/webaccount-update.md) | [webAccount](webaccount.md) | Update webAccount object. |
| [Delete](../api/webaccount-delete.md) | None | Delete webAccount object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String||
|service|[serviceInformation](serviceinformation.md)||
|statusMessage|String||
|userId|String||
|webUrl|String||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.webAccount",
  "baseType": ""
}-->

```json
{
  "description": "String",
  "service": {"@odata.type": "microsoft.graph.serviceInformation"},
  "statusMessage": "String",
  "userId": "String",
  "webUrl": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "webAccount resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->