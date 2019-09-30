---
title: "countryNamedLocation resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# countryNamedLocation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get countryNamedLocation](../api/countrynamedlocation-get.md) | [countryNamedLocation](countrynamedlocation.md) | Read properties and relationships of countryNamedLocation object. |
| [Update](../api/countrynamedlocation-update.md) | [countryNamedLocation](countrynamedlocation.md) | Update countryNamedLocation object. |
| [Delete](../api/countrynamedlocation-delete.md) | None | Delete countryNamedLocation object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|countriesAndRegions|String collection||
|includeUnknownCountriesAndRegions|Boolean||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.countryNamedLocation",
  "baseType": ""
}-->

```json
{
  "countriesAndRegions": ["String"],
  "includeUnknownCountriesAndRegions": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "countryNamedLocation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->