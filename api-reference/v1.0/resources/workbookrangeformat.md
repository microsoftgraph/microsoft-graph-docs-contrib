---
title: "workbookRangeFormat resource type"
description: "A format object encapsulating the range's font, fill, borders, alignment, and other properties."
ms.localizationpriority: medium
author: "lumine2008"
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Range format
ms.date: 07/30/2024
---

# workbookRangeFormat resource type

Namespace: microsoft.graph

A format object encapsulating the range's font, fill, borders, alignment, and other properties.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/rangeformat-get.md) | [workbookRangeFormat](workbookrangeformat.md) |Read properties and relationships of rangeFormat object.|
|[Update range format](../api/rangeformat-update.md) | [workbookRangeFormat](workbookrangeformat.md)	|Update RangeFormat object. |
|[List range borders](../api/rangeformat-list-borders.md) |[workbookRangeBorder](workbookrangeborder.md) collection| Get the list of workbookRangeBorder objects.|
|[Create range borders](../api/rangeformat-post-borders.md) |[workbookRangeBorder](workbookrangeborder.md)| Create a new workbookRangeBorder object by posting to the borders collection.|
|[Autofit columns](../api/rangeformat-autofitcolumns.md)|None|Changes the width of the columns of the current range to achieve the best fit for the current data in the columns.|
|[Autofit rows](../api/rangeformat-autofitrows.md)|None|Changes the height of the rows of the current range to achieve the best fit for the current data in the columns.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|columnWidth|double|The width of all columns within the range. If the column widths aren't uniform, null will be returned.|
|horizontalAlignment|string|The horizontal alignment for the specified object. The possible values are: `General`, `Left`, `Center`, `Right`, `Fill`, `Justify`, `CenterAcrossSelection`, `Distributed`.|
|rowHeight|double|The height of all rows in the range. If the row heights aren't uniform null will be returned.|
|verticalAlignment|string|The vertical alignment for the specified object. The possible values are: `Top`, `Center`, `Bottom`, `Justify`, `Distributed`.|
|wrapText|Boolean|Indicates whether Excel wraps the text in the object. A null value indicates that the entire range doesn't have a uniform wrap setting.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|borders|[workbookRangeBorder](workbookrangeborder.md) collection|Collection of border objects that apply to the overall range selected Read-only.|
|fill|[workbookRangeFill](workbookrangefill.md)|Returns the fill object defined on the overall range. Read-only.|
|font|[workbookRangeFont](workbookrangefont.md)|Returns the font object defined on the overall range selected Read-only.|
|protection|[workbookFormatProtection](workbookformatprotection.md)|Returns the format protection object for a range. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookRangeFormat"
}-->

```json
{
  "columnWidth": 1024,
  "horizontalAlignment": "string",
  "rowHeight": 1024,
  "verticalAlignment": "string",
  "wrapText": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "RangeFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

