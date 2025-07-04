---
title: "workbookWorksheet resource type"
description: "Represnts an Excel worksheet, which contains a grid of cells. It can contain data, tables, charts, and so on."
ms.localizationpriority: high
author: "lumine2008"
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Worksheet
ms.date: 07/30/2024
---

# workbookWorksheet resource type

Namespace: microsoft.graph

Represnts an Excel worksheet, which contains a grid of cells. It can contain data, tables, charts, and so on.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/worksheet-list.md) | [workbookWorksheet](workbookworksheet.md) collection |Get the list of worksheets in the workbook. |
|[Add](../api/worksheetcollection-add.md)|[workbookWorksheet](workbookworksheet.md)|Adds a new worksheet to the workbook. The worksheet will be added at the end of existing worksheets. |
|[Get](../api/worksheet-get.md) | [workbookWorksheet](workbookworksheet.md) |Read the properties and relationships of the workbookWorksheet object.|
|[Update](../api/worksheet-update.md) | [workbookWorksheet](workbookworksheet.md)	|Update a workbookWorksheet object. |
|[Delete](../api/worksheet-delete.md)|None|Delete the worksheet from the workbook.|
|[List charts](../api/worksheet-list-charts.md) |[workbookChart](workbookchart.md) collection| Get a list of the charts in the worksheet.|
|[Add chart](../api/worksheet-post-charts.md) |[workbookChart](workbookchart.md)| Create a new chart by posting to the charts collection.|
|[List names](../api/worksheet-list-names.md) |[workbookNamedItem](workbooknameditem.md) collection| Get the list of workbookNamedItem objects for the worksheet.|
|[List pivot tables](../api/workbookworksheet-list-pivottables.md) |[workbookPivotTable](workbookpivottable.md) collection| Get a list of the pivot tables in the worksheet.|
|[List tables](../api/worksheet-list-tables.md) |[workbookTable](workbooktable.md) collection| Get the list of tables in the worksheet.|
|[Add table](../api/worksheet-post-tables.md) |[workbookTable](workbooktable.md)| Create a new table by posting to the tables collection.|
|[Get cell](../api/worksheet-cell.md)|[workbookRange](workbookrange.md)|Get the range object that contains the single cell, specified by row and column numbers. The cell can be outside the bounds of its parent range, so long as it is within the worksheet grid.|
|[Get range](../api/worksheet-range.md)|[workbookRange](workbookrange.md)|Get the range object specified by the address or name.|
|[Get used range](../api/worksheet-usedrange.md)|[workbookRange](workbookrange.md)|Get the smallest range that encompasses any cells that have a value or formatting assigned to them. If the worksheet is blank, this function will return the top left cell.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|The unique identifier for the worksheet in the workbook. The value of the identifier remains the same even when the worksheet is renamed or moved. Read-only.|
|name|string|The display name of the worksheet.|
|position|int|The zero-based position of the worksheet within the workbook.|
|visibility|string|The visibility of the worksheet. The possible values are: `Visible`, `Hidden`, `VeryHidden`.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|charts|[workbookChart](workbookchart.md) collection|The list of charts that are part of the worksheet. Read-only.|
|names|[workbookNamedItem](workbooknameditem.md) collection|The list of names that are associated with the worksheet. Read-only.|
|pivotTables|[workbookPivotTable](workbookpivottable.md) collection|The list of piot tables that are part of the worksheet. |
|protection|[workbookWorksheetProtection](workbookworksheetprotection.md)|The sheet protection object for a worksheet. Read-only.|
|tables|[workbookTable](workbooktable.md) collection|The list of tables that are part of the worksheet. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookWorksheet"
}-->

```json
{
  "id": "string",
  "name": "string",
  "position": 1024,
  "visibility": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Worksheet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

