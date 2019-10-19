---
title: "workPosition resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "People"
doc_type: "resourcePageType"
---

# workPosition resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get workPosition](../api/workposition-get.md) | [workPosition](workposition.md) | Read properties and relationships of workPosition object. |
| [Update](../api/workposition-update.md) | [workPosition](workposition.md) | Update workPosition object. |
| [Delete](../api/workposition-delete.md) | None | Delete workPosition object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|categories|String collection||
|detail|[positionDetail](positiondetail.md)||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workPosition",
  "baseType": ""
}-->

```json
{
  "categories": ["String"],
  "detail": {"@odata.type": "microsoft.graph.positionDetail"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workPosition resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->