---
title: "ipNamedLocation resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# ipNamedLocation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get ipNamedLocation](../api/ipnamedlocation-get.md) | [ipNamedLocation](ipnamedlocation.md) | Read properties and relationships of ipNamedLocation object. |
| [Update](../api/ipnamedlocation-update.md) | [ipNamedLocation](ipnamedlocation.md) | Update ipNamedLocation object. |
| [Delete](../api/ipnamedlocation-delete.md) | None | Delete ipNamedLocation object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|ipRanges|[ipRange](iprange.md) collection||
|isTrusted|Boolean||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.ipNamedLocation",
  "baseType": ""
}-->

```json
{
  "ipRanges": [{"@odata.type": "microsoft.graph.ipRange"}],
  "isTrusted": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ipNamedLocation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->