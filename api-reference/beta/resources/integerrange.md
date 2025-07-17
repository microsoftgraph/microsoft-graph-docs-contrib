---
title: integerRange resource type
description: Represents an inclusive range of integers described by two Int64 boundaries.
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/23/2024
---

# integerRange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an inclusive range of integers described by two Int64 boundaries.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|start|Int64|The inclusive lower bound of the integer range.|
|end|Int64|The inclusive upper bound of the integer range.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.integerRange"
}-->

```json
{
    "start": 12345,
    "end": 12345
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "integerRange resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

