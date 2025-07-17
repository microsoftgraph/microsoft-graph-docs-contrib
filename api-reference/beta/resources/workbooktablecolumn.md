---
title: "workbookTableColumn resource type"
description: "Represents a column in a table."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
ms.date: 07/31/2024
---

# workbookTableColumn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a column in a table.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/tablecolumn-list.md) | [workbookTableColumn](workbooktablecolumn.md) collection |Get tableColumn object collection. |
|[Add](../api/tablecolumncollection-add.md)|[workbookTableColumn](workbooktablecolumn.md)|Add a new column to the table.|
|[Get](../api/tablecolumn-get.md) | [workbookTableColumn](workbooktablecolumn.md) |Read properties and relationships of tableColumn object.|
|[Update](../api/tablecolumn-update.md) | [workbookTableColumn](workbooktablecolumn.md)	|Update TableColumn object. |
|[Delete](../api/tablecolumn-delete.md)|None|Deletes the column from the table.|
|[Get column range](../api/tablecolumn-range.md)|[workbookRange](workbookrange.md)|Gets the range object associated with the entire column.|
|[Get data body range](../api/tablecolumn-databodyrange.md)|[workbookRange](workbookrange.md)|Gets the range object associated with the data body of the column.|
|[Get header row range](../api/tablecolumn-headerrowrange.md)|[workbookRange](workbookrange.md)|Gets the range object associated with the header row of the column.|
|[Get item at](../api/tablecolumncollection-itemat.md)|[workbookTableColumn](workbooktablecolumn.md)|Gets a column based on its position in the collection.|
|[Get total row range](../api/tablecolumn-totalrowrange.md)|[workbookRange](workbookrange.md)|Gets the range object associated with the totals row of the column.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|The unique identifier for the column within the table. This property should be interpreted as an opaque string value and shouldn't be parsed to any other type. Read-only.|
|index|int|The index of the column within the columns collection of the table. Zero-indexed. Read-only.|
|name|string|The name of the table column.|
|values|Json|Represents the raw values of the specified range. The data returned could be of type string, number, or a Boolean. Cell that contain an error will return the error string.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|filter|[workbookFilter](workbookfilter.md)|The filter applied to the column. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookTableColumn"
}-->

```json
{
  "id": "1024",
  "index": 1024,
  "name": "string",
  "values": "json"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "TableColumn resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


