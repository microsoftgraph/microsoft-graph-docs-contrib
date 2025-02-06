---
title: "workbookTableRow resource type"
description: "Represents a row in a table."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Table row
ms.date: 08/01/2024
---

# workbookTableRow resource type

Namespace: microsoft.graph

Represents a row in a table.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/tablerow-list.md) | [workbookTableRow](workbooktablerow.md) collection |Get a workbookTableRow object collection. |
|[Add](../api/tablerowcollection-add.md)|[workbookTableRow](workbooktablerow.md)|Add a new row to the table.|
|[Get](../api/tablerow-get.md) | [workbookTableRow](workbooktablerow.md) |Read the properties and relationships of a tableRow object.|
|[Update](../api/tablerow-update.md) | [workbookTableRow](workbooktablerow.md)	|Update a workbookTableRow object. |
|[Delete](../api/tablerow-delete.md)|None|Delete the row from the table.|
|[Add rows](../api/table-post-rows.md)|[workbookTableRow](workbooktablerow.md)|Add rows to the table.|
|[Get item at](../api/tablerowcollection-itemat.md)|[workbookTableRow](workbooktablerow.md)|Get a row based on its position in the collection.|
|[Get row range](../api/tablerow-range.md)|[workbookRange](workbookrange.md)|Return the range object associated with the entire row.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|index|Int32|The index of the row within the rows collection of the table. Zero-based. Read-only.|
|values|[Json](../resources/json.md)|The raw values of the specified range. The data returned could be of type string, number, or a Boolean. Any cell that contain an error will return the error string.|

## Relationships

None.


## JSON representation

The following JSON representation shows the resource type.

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
  "description": "workbookTableRow resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

