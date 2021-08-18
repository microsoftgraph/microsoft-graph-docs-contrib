---
title: "TableRow resource type"
description: "Represents a row in a table."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# TableRow resource type

Namespace: microsoft.graph

Represents a row in a table.


## Methods

### Manage TableRow
| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get TableRow](../api/tablerow-get.md) | [TableRow](tablerow.md) |Read properties and relationships of tableRow object.|
|[Update](../api/tablerow-update.md) | [TableRow](tablerow.md)	|Update TableRow object. |
|[Delete](../api/tablerow-delete.md)|None|Deletes the row from the table.|
|[Create TableRow](../api/table-post-rows.md)|[TableRow](tablerow.md)|Adds rows to the table.|
|[Range](../api/tablerow-range.md)|[Range](range.md)|Returns the range object associated with the entire row.|

### Manage TableRowCollection
| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/tablerow-list.md) | [TableRow](tablerow.md) collection |Get tableRow object collection. |
|[Itemat](../api/tablerowcollection-itemat.md)|[TableRow](tablerow.md)|Gets a row based on its position in the collection.|
|[Add](../api/tablerowcollection-add.md)|[TableRow](tablerow.md)|Adds a new row to the table.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|index|Int32|Returns the index number of the row within the rows collection of the table. Zero-indexed. Read-only.|
|values|[Json](../resources/json.md)|Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.workbookTableRow",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workbookTableRow",
  "index": "Integer",
  "values": {
    "@odata.type": "microsoft.graph.Json"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "TableRow resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

