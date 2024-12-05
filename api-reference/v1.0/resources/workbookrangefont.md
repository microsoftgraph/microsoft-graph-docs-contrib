---
title: "workbookRangeFont resource type"
description: "This object represents the font attributes (font name, font size, color, etc.) for an object."
ms.localizationpriority: medium
author: "lumine2008"
ms.subservice: "excel"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# workbookRangeFont resource type

Namespace: microsoft.graph

This object represents the font attributes (font name, font size, color, etc.) for an object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/rangefont-get.md) | [workbookRangeFont](workbookrangefont.md) |Read the properties and relationships of a workbookRangeFont object.|
|[Update](../api/rangefont-update.md) | [workbookRangeFont](workbookrangefont.md)	|Update a workbookRangeFont object|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bold|Boolean|Inidicates whether the font is bold.|
|color|string|The HTML color code representation of the text color. For example, #FF0000 represents the color red.|
|italic|Boolean|Inidicates whether the font is italic.|
|name|string|The font name. For example, "Calibri".|
|size|double|The font size.|
|underline|string|The type of underlining applied to the font. The possible values are: `None`, `Single`, `Double`, `SingleAccountant`, `DoubleAccountant`.|

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookRangeFont"
}-->

```json
{
  "bold": true,
  "color": "string",
  "italic": true,
  "name": "string",
  "size": 1024,
  "underline": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "RangeFont resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

