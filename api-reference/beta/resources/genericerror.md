---
title: "genericError resource type"
description: "A general-purpose error."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: non-product-specific
author: "SuryaLashmiS"
ms.date: 04/11/2024
---

# genericError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A general-purpose error.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| message | String | The error message. |
| code | String | The error code. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.genericError"
}-->

```json
{
  "@odata.type": "#microsoft.graph.genericError",
  "message": "String",
  "code": "String"
}
```


