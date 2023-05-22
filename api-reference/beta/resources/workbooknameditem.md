---
title: "workbookNamedItem resource type"
description: "Represents a defined name for a range of cells or value."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "excel"
author: "ruoyingl"
---

# workbookNamedItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a defined name for a range of cells or value. Names can be primitive named objects (as seen in the following type), range object, reference to a range. This object can be used to obtain range object associated with names.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Add](../api/nameditem-add.md)|[workbookNamedItem](workbooknameditem.md)|Add a new name to the collection of the given scope.|
|[AddFormulaLocal](../api/nameditem-addformulalocal.md)|[workbookNamedItem](workbooknameditem.md)|Add a new name to the collection of the given scope using the user's locale for the formula.|
|[Get NamedItem](../api/nameditem-get.md) | [workbookNamedItem](workbooknameditem.md) |Read properties and relationships of **namedItem** object.|
|[Update](../api/nameditem-update.md) | [workbookNamedItem](workbooknameditem.md)	|Update a **namedItem** object. |
|[Range](../api/nameditem-range.md)|[workbookRange](workbookrange.md)|Return the range object that is associated with the name. Throw an exception if the named item's type is not a range.|
|[List](../api/nameditem-list.md) | [workbookNamedItem](workbooknameditem.md) collection |Get a collection of **namedItem** objects. |
| [Delete](../api/nameditem-delete.md) | None | Delete a [workbookNamedItem](workbooknameditem.md) object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|Represents the comment associated with this name.|
|name|String|The name of the object. Read-only.|
|scope|String|Indicates whether the name is scoped to the workbook or to a specific worksheet. Read-only.|
|type|String|Indicates what type of reference is associated with the name. Possible values are: `String`, `Integer`, `Double`, `Boolean`, `Range`. Read-only.|
|value|String|Represents the formula that the name is defined to refer to. For example, `=Sheet14!$B$2:$H$12` and `=4.75`. Read-only.|
|visible|Boolean|Specifies whether the object is visible or not.|

## Relationships
| Relationship	   | Type	|Description|
|:---------------|:--------|:----------|
|worksheet|[workbookWorksheet](workbookworksheet.md)|Returns the worksheet on which the named item is scoped to. Available only if the item is scoped to the worksheet. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookNamedItem"
}-->

```json
{
  "comment": "String",
  "name": "String",
  "scope": "String",
  "type": "String",
  "value": "String",
  "visible": "Boolean"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "NamedItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
