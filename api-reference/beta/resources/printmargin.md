---
title: printMargin complex type
description: Specifies the margin widths to use when printing.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printMargin complex type

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

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printPageRange"
}-->

```json
{
  "top": 123456,
  "bottom": 123456,
  "right": 123456,
  "left": 123456
}
```
