---
title: "genericError resource type"
description: "A general-purpose error."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: outlook
author: "SuryaLashmiS"
ms.date: 04/12/2024
---

# genericError resource type

Namespace: microsoft.graph

A general-purpose error.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| code | String | The error code. |
| message | String | The error message. |

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
  "code": "String",
  "message": "String"
}
```

