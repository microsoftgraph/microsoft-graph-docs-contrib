---
title: "workbookRangeBorder resource type"
description: "Represents the border of an object."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Range border
ms.date: 07/17/2024
---

# workbookRangeBorder resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the border of an object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/rangeborder-list.md) | [workbookRangeBorder](workbookrangeborder.md) collection |Get rangeBorder object collection. |
|[Get](../api/rangeborder-get.md) | [workbookRangeBorder](workbookrangeborder.md) |Read properties and relationships of rangeBorder object.|
|[Update](../api/rangeborder-update.md) | [workbookRangeBorder](workbookrangeborder.md)	|Update RangeBorder object. |
|[Get range border at](../api/rangebordercollection-itemat.md)|[workbookRangeBorder](workbookrangeborder.md)|Gets a border object using its index|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|The HTML color code that represents the color of the border line. Can either be of the form #RRGGBB, for example "FFA500", or a named HTML color, for example "orange".|
|id|string|The border identifier. The possible values are: `EdgeTop`, `EdgeBottom`, `EdgeLeft`, `EdgeRight`, `InsideVertical`, `InsideHorizontal`, `DiagonalDown`, `DiagonalUp`. Read-only.|
|sideIndex|string|Indicates the specific side of the border. The possible values are: `EdgeTop`, `EdgeBottom`, `EdgeLeft`, `EdgeRight`, `InsideVertical`, `InsideHorizontal`, `DiagonalDown`, `DiagonalUp`. Read-only.|
|style|string|Indicates the line style for the border. The possible values are: `None`, `Continuous`, `Dash`, `DashDot`, `DashDotDot`, `Dot`, `Double`, `SlantDashDot`.|
|weight|string|The weight of the border around a range. The possible values are: `Hairline`, `Thin`, `Medium`, `Thick`.|

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookRangeBorder"
}-->

```json
{
  "color": "string",
  "id": "string",
  "sideIndex": "string",
  "style": "string",
  "weight": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "RangeBorder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


