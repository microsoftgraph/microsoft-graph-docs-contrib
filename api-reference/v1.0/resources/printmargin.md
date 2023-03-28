---
title: printMargin resource type
description: Specifies the margin widths to use when printing.
author: nilakhan
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: resourcePageType
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


## JSON representation
The following is a JSON representation of the resource.
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

