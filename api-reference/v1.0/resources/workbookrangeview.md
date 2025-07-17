---
title: "workbookRangeView resource type"
description: "Represents a set of visible cells of the parent range."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Range view
ms.date: 08/01/2024
---

# workbookRangeView resource type

Namespace: microsoft.graph
Represents a set of visible cells of the parent range.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List rows](../api/workbookrangeview-list-rows.md) |[workbookRangeView](workbookrangeview.md) collection| Get a workbookRangeView object collection.|
|[Get item at](../api/workbookrangeview-itemat.md)|[workbookRangeView](workbookrangeview.md)|Get a range view item based in index.|
|[Get range](../api/workbookrangeview-range.md)|[workbookRange](workbookrange.md)|Get the range object associated with the range view|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|cellAddresses|Json|The cell addresses.|
|columnCount|Int32|The number of visible columns. Read-only.|
|formulas|Json|The formula in A1-style notation.	|
|formulasLocal|Json|The formula in A1-style notation, in the user's language and number-formatting locale. For example, the English "=SUM(A1, 1.5)" formula would become "=SUMME(A1; 1,5)" in German.	|
|formulasR1C1|Json|Represents the formula in R1C1-style notation.	|
|index|Int32|The index of the range.|
|numberFormat|Json|Excel's number format code for the given cell. Read-only.	|
|rowCount|Int32|The number of visible rows. Read-only.	|
|text|Json|The text values of the specified range. The Text value won't depend on the cell width. The # sign substitution that happens in Excel UI won't affect the text value returned by the API. Read-only.	|
|valueTypes|Json|The type of data of each cell. Read-only. The possible values are: Unknown, Empty, String, Integer, Double, Boolean, Error.	|
|values|Json|The raw values of the specified range view. The data returned could be of type string, number, or a Boolean. Cell that contains an error returns the error string.	|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|rows|[workbookRangeView](workbookrangeview.md) collection| The collection of range views associated with the range. Read-only.	Read-only.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.workbookRangeView"
}-->
```json
{
  "cellAddresses": "Json",
  "columnCount": 1024,
  "formulas": "Json",
  "formulasLocal": "Json",
  "formulasR1C1": "Json",
  "index": 1024,
  "numberFormat": "Json",
  "rowCount": 1024,
  "text": "Json",
  "valueTypes": "Json",
  "values": "Json"
}
```

