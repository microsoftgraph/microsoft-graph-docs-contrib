---
title: "workbookTableRow resource type"
description: "Represents a row in a table."
author: "lumine2008"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookTableRow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a row in a table.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/tablerow-list.md) | [workbookTableRow](workbooktablerow.md) collection |Get a tableRow object collection. |
|[Create](../api/table-post-rows.md)|[workbookTableRow](workbooktablerow.md)|Add rows to the table.|
|[Get](../api/tablerow-get.md) | [workbookTableRow](workbooktablerow.md) |Read the properties and relationships of a tableRow object.|
|[Update](../api/tablerow-update.md) | [workbookTableRow](workbooktablerow.md)	|Update a TableRow object. |
|[Delete](../api/tablerow-delete.md)|None|Delete the row from the table.|
|[Range](../api/tablerow-range.md)|[workbookRange](workbookrange.md)|Return the range object associated with the entire row.|
|[Itemat](../api/tablerowcollection-itemat.md)|[workbookTableRow](workbooktablerow.md)|Get a row based on its position in the collection.|
|[Add](../api/tablerowcollection-add.md)|[workbookTableRow](workbooktablerow.md)|Add a new row to the table.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|index|Int32|Returns the index number of the row within the rows collection of the table. Zero-indexed. Read-only.|
|values|[Json](../resources/json.md)|Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.|

## Relationships
None.


## JSON representation

The following is a JSON representation of the resource.

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
<!--
{
  "type": "#page.annotation",
  "description": "TableRow resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


