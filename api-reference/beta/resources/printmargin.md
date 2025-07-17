---
title: "printMargin resource type"
description: Specifies the margin widths to use when printing.
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 10/04/2024
---

# printMargin resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the margin widths to use when printing.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|top|Int32|The margin in microns from the top edge.|
|bottom|Int32|The margin in microns from the bottom edge.|
|right|Int32|The margin in microns from the right edge.|
|left|Int32|The margin in microns from the left edge.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printMargin"
}-->

```json
{
  "top": 123456,
  "bottom": 123456,
  "right": 123456,
  "left": 123456
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printMargin resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


