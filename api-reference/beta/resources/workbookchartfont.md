---
title: "workbookChartFont resource type"
description: "This object represents the font attributes (font name, font size, color, etc.) for a chart object."
ms.localizationpriority: medium
author: "lumine2008"
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Chart font
ms.date: 08/01/2024
---

# workbookChartFont resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This object represents the font attributes (font name, font size, color, etc.) for a chart object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/chartfont-get.md) | [workbookChartFont](workbookchartfont.md) |Read the properties and relationships of chartFont object.|
|[Update](../api/chartfont-update.md) | [workbookChartFont](workbookchartfont.md)	|Update a chartFont object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bold|Boolean|Indicates whether the fond is bold.|
|color|string|The HTML color code representation of the text color. For example #FF0000 represents Red.|
|italic|Boolean|Indicates whether the fond is italic.|
|name|string|The font name. For example "Calibri".|
|size|double|The size of the font. For example,  11.|
|underline|string|The type of underlining applied to the font. The possible values are: `None`, `Single`.|

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.workbookChartFont"
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
<!--
{
  "type": "#page.annotation",
  "description": "ChartFont resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


