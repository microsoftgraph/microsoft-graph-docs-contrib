---
title: printPageRange resource type
description: Specifies the range of pages to be printed.
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/22/2024
---

# printPageRange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the range of pages to be printed.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|startPage|Int32|The start page (inclusive) for the range. Read-only.|
|endPage|Int32|The end page (inclusive) for the range. Read-only.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printPageRange"
}-->

```json
{
  "startPage": "Int32",
  "endPage": "Int32"
}
```


