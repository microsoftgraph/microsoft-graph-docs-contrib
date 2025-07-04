---
title: integerRange resource type
description: Represents an inclusive range of integers described by two Int64 boundaries.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 08/08/2024
---

# integerRange resource type

Namespace: microsoft.graph

Represents an inclusive range of integers described by two Int64 boundaries.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|end|Int64|The inclusive upper bound of the integer range.|
|start|Int64|The inclusive lower bound of the integer range.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.integerRange"
}
-->
```json
{
    "start": 12345,
    "end": 12345
}
```
