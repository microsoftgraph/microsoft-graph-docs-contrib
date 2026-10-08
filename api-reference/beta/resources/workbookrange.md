---
title: "workbookRange resource type"
description: "Represents a set of one or more contiguous cells in a workbook, such as a cell, a row, a column, or a block of cells."
ms.localizationpriority: medium
author: "lumine2008"
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Range
ms.date: 08/01/2024
---

# workbookRange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a set of one or more contiguous cells in a workbook, such as a cell, a row, a column, or a block of cells.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/range-get.md) | [workbookRange](workbookrange.md) |Read the properties and relationships of a range object.|
|[Update](../api/range-update.md) | [workbookRange](workbookrange.md)	|Update a range object. |
|[Delete](../api/range-delete.md)|None|Delete the cells associated with the range.|
|[Clear](../api/range-clear.md)|None|Clear range values, format, fill, or border.|
|[Get boundingrect](../api/range-boundingrect.md)|[workbookRange](workbookrange.md)|Get the smallest range object that encompasses the given ranges. For example, the GetBoundingRect of "B2:C5" and "D10:E15" is "B2:E16".|
|[Get cell](../api/range-cell.md)|[workbookRange](workbookrange.md)|Get the range object containing the single cell based on row and column numbers. The cell can be outside the bounds of its parent range, as long as it stays within the worksheet grid. The returned cell is located relative to the top left cell of the range.|
|[Get column](../api/range-column.md)|[workbookRange](workbookrange.md)|Get a column contained in the range.|
|[Get columns after](../api/workbookrange-columnsafter.md)|[workbookRangeView](workbookrangeview.md)|Get some columns to the right of the given range.|
|[Get columns before](../api/workbookrange-columnsbefore.md)|[workbookRangeView](workbookrangeview.md)|Get some columns to the left of the given range.|
|[Get entire column](../api/range-entirecolumn.md)|[workbookRange](workbookrange.md)|Get an object that represents the entire column of the range.|
|[Get entire row](../api/range-entirerow.md)|[workbookRange](workbookrange.md)|Get an object that represents the entire row of the range.|
|[Get intersection](../api/range-intersection.md)|[workbookRange](workbookrange.md)|Get the range object that represents the rectangular intersection of the given ranges.|
|[Get last cell](../api/range-lastcell.md)|[workbookRange](workbookrange.md)|Get the last cell within the range. For example, the last cell of "B2:D5" is "D5".|
|[Get last column](../api/range-lastcolumn.md)|[workbookRange](workbookrange.md)|Get the last column within the range. For example, the last column of "B2:D5" is "D2:D5".|
|[Get last row](../api/range-lastrow.md)|[workbookRange](workbookrange.md)|Getsthe last row within the range. For example, the last row of "B2:D5" is "B5:D5".|
|[Get offset range](../api/range-offsetrange.md)|[workbookRange](workbookrange.md)|Get an object that represents a range that's offset from the specified range. The dimension of the returned range matches this range. If the resulting range is forced outside the bounds of the worksheet grid, an exception is thrown.|
|[Get resized range](../api/workbookrange-resizedrange.md)|[workbookRangeView](workbookrangeview.md)|Get a range object similar to the current range object, but with its bottom-right corner expanded (or contracted) by some number of rows and columns.|
|[Get row](../api/range-row.md)|[workbookRange](workbookrange.md)|Get a row contained in the range.|
|[Get rows above](../api/workbookrange-rowsabove.md)|[workbookRangeView](workbookrangeview.md)|Get some rows above a given range.|
|[Get rows below](../api/workbookrange-rowsbelow.md)|[workbookRangeView](workbookrangeview.md)|Get some rows below a given range.|
|[Get used range](../api/range-usedrange.md)|[workbookRange](workbookrange.md)|Return the used range of the given range object.|
|[Get visible view](../api/workbookrange-visibleview.md)|[workbookRangeView](workbookrangeview.md)|Get the range visible from a filtered range.|
|[Insert range](../api/range-insert.md)|[workbookRange](workbookrange.md)|Insert a cell or a range of cells into the worksheet in place of this range, and shifts the other cells to make space. Returns a new Range object at the now blank space.|
|[Merge](../api/range-merge.md)|None|Merge the range cells into one region in the worksheet.|
|[Unmerge](../api/range-unmerge.md)|None|Unmerge the range cells into separate cells.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|string|Represents the range reference in A1-style. Address value contains the Sheet reference (for example, Sheet1!A1:B4). Read-only.|
|addressLocal|string|Represents range reference for the specified range in the language of the user. Read-only.|
|cellCount|int|Number of cells in the range. Read-only.|
|columnCount|int|Represents the total number of columns in the range. Read-only.|
|columnHidden|Boolean|Indicates whether all columns of the current range are hidden.|
|columnIndex|int|Represents the column number of the first cell in the range. Zero-indexed. Read-only.|
|formulas|Json|Represents the formula in A1-style notation.|
|formulasLocal|Json|Represents the formula in A1-style notation, in the user's language and number-formatting locale.  For example, the English "=SUM(A1, 1.5)" formula would become "=SUMME(A1; 1,5)" in German.|
|formulasR1C1|Json|Represents the formula in R1C1-style notation.|
|hidden|Boolean|Represents if all cells of the current range are hidden. Read-only.|
|numberFormat|Json|Represents Excel's number format code for the given cell.|
|rowCount|int|Returns the total number of rows in the range. Read-only.|
|rowHidden|Boolean|Indicates whether all rows of the current range are hidden.|
|rowIndex|int|Returns the row number of the first cell in the range. Zero-indexed. Read-only.|
|text|Json|Text values of the specified range. The text value doesn't depend on the cell width. The # sign substitution that happens in Excel UI doesn't affect the text value returned by the API. Read-only.|
|valueTypes|string|Represents the type of data of each cell. The possible values are: `Unknown`, `Empty`, `String`, `Integer`, `Double`, `Boolean`, `Error`. Read-only.|
|values|Json|Represents the raw values of the specified range. The data returned could be of type string, number, or a Boolean. Cell that contains an error returns the error string.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookRangeFormat](workbookrangeformat.md)|Returns a format object, encapsulating the range's font, fill, borders, alignment, and other properties. Read-only.|
|sort|[workbookRangeSort](workbookrangesort.md)|The worksheet containing the current range. Read-only.|
|worksheet|[workbookWorksheet](workbookworksheet.md)|The worksheet containing the current range. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookRange"
}-->

```json
{
  "id": "string",
  "address": "string",
  "addressLocal": "string",
  "cellCount": 1024,
  "columnCount": 1024,
  "columnHidden": true,
  "columnIndex": 1024,
  "formulas": "Json",
  "formulasLocal": "Json",
  "formulasR1C1": "Json",
  "hidden": true,
  "numberFormat": "Json",
  "rowCount": 1024,
  "rowHidden": true,
  "rowIndex": 1024,
  "text": "Json",
  "valueTypes": "string",
  "values": "json"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Range resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


