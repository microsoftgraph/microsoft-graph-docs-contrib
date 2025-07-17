---
title: printMargin resource type
description: Specifies the margin widths to use when printing.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 10/04/2024
---

# printMargin resource type

Namespace: microsoft.graph

Specifies the margin widths to use when printing.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bottom|Int32|The margin in microns from the bottom edge.|
|left|Int32|The margin in microns from the left edge.|
|right|Int32|The margin in microns from the right edge.|
|top|Int32|The margin in microns from the top edge.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printMargin"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printMargin",
  "top": "Integer",
  "bottom": "Integer",
  "right": "Integer",
  "left": "Integer"
}
```

