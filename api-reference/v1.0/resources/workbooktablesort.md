---
title: "workbookTableSort resource type"
description: "Manages sorting operations on Table objects."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Table sort
ms.date: 08/01/2024
---

# workbookTableSort resource type

Namespace: microsoft.graph

Manages sorting operations on Table objects.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/tablesort-get.md) | [workbookTableSort](workbooktablesort.md) |Read the properties and relationships of the workbookTableSort object.|
|[Apply sort](../api/tablesort-apply.md)|None|Perform a sort operation.|
|[Clear sort](../api/tablesort-clear.md)|None|Clears the sorting that is currently on the table. While this doesn't modify the table's ordering, it clears the state of the header buttons.|
|[Reapply sort](../api/tablesort-reapply.md)|None|Reapplies the current sorting parameters to the table.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|fields|[workbookSortField](sortfield.md) collection|The list of the current conditions last used to sort the table. Read-only.|
|matchCase|Boolean|Indicates whether the casing impacted the last sort of the table. Read-only.|
|method|string|The Chinese character ordering method last used to sort the table. The possible values are: `PinYin`, `StrokeCount`. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookTableSort"
}-->

```json
{
  "matchCase": true,
  "method": "string",
  "fields": [{ "@odata.type": "microsoft.graph.workbookSortField" }]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "TableSort resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

