---
title: "workbookSortField resource type"
description: "Represents a condition in a sorting operation."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "excel"
author: "ruoyingl"
ms.date: 08/01/2024
---

# workbookSortField resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a condition in a sorting operation.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ascending|Boolean|Represents whether the sorting is done in an ascending fashion.|
|color|string|Represents the color that is the target of the condition if the sorting is on font or cell color.|
|dataOption|string|Represents additional sorting options for this field. Possible values are: `Normal`, `TextAsNumber`.|
|icon|[workbookIcon](workbookicon.md)|Represents the icon that is the target of the condition if the sorting is on the cell's icon.|
|key|int|Represents the column (or row, depending on the sort orientation) that the condition is on. Represented as an offset from the first column (or row).|
|sortOn|string|Represents the type of sorting of this condition. Possible values are: `Value`, `CellColor`, `FontColor`, `Icon`.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookSortField"
}-->

```json
{
  "ascending": true,
  "color": "string",
  "dataOption": "string",
  "key": 1024,
  "sortOn": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "SortField resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


