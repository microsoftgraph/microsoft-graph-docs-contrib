---
title: "workbookNamedItem resource type"
description: "Represents a defined name for a range of cells or value. Names can be primitive named objects (as seen in the type below), range object, reference to a range. This object can be used to obtain range object associated with names."
ms.localizationpriority: medium
author: "ruoyingl"
ms.subservice: excel
doc_type: resourcePageType
toc.title: Named item
ms.date: 07/30/2024
---

# workbookNamedItem resource type

Namespace: microsoft.graph

Represents a defined name for a range of cells or value. Names can be primitive named objects (as seen in the type below), range object, reference to a range. This object can be used to obtain range object associated with names.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/nameditem-list.md) | [workbookNamedItem](workbooknameditem.md) collection |Get the list of workbookNamedItem objects. |
|[Add](../api/nameditem-add.md)|[workbookNamedItem](workbooknameditem.md)|Add a new workbookNamedItem object to the collection of the given scope.|
|[Get](../api/nameditem-get.md) | [workbookNamedItem](workbooknameditem.md) |Read the properties and relationships of a workbookNamedItem object.|
|[Update](../api/nameditem-update.md) | [workbookNamedItem](workbooknameditem.md)	|Update a workbookNamedItem object. |
|[Add named item to collection](../api/nameditem-addformulalocal.md)|[workbookNamedItem](workbooknameditem.md)|Add a new workbookNamedItem object to the collection of the given scope. Uses the user's locale for the formula.|
|[List range](../api/nameditem-range.md)|[workbookRange](workbookrange.md)|Return the range object that is associated with the workbookNamedItem object. Throw an exception if the workbookNamedItem object's **type** is not a range.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|The comment associated with this name.|
|name|String|The name of the object. Read-only.|
|scope|String|Indicates whether the name is scoped to the workbook or to a specific worksheet. Read-only.|
|type|String|The type of reference is associated with the name. The possible values are: `String`, `Integer`, `Double`, `Boolean`, `Range`. Read-only.|
|value|String|The formula that the name is defined to refer to. For example, `=Sheet14!$B$2:$H$12` and `=4.75`. Read-only.|
|visible|Boolean|Indicates whether the object is visible.|


## Relationships
| Relationship	   | Type	|Description|
|:---------------|:--------|:----------|
|worksheet|[workbookWorksheet](workbookworksheet.md)|Returns the worksheet to which the named item is scoped. Available only if the item is scoped to the worksheet. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookNamedItem"
}-->

```json
{
  "name": "string",
  "comment": "string",
  "scope": "string",
  "type": "string",
  "value": {"@odata.type": "microsoft.graph.Json"},
  "visible": true

}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "NamedItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

