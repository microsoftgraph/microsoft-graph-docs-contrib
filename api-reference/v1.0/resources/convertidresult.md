---
title: "convertIdResult resource type"
description: "The result of an ID format conversion performed by the translateExchangeIds function."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "outlook"
author: "SuryaLashmiS"
ms.date: 04/03/2024
---

# convertIdResult resource type

Namespace: microsoft.graph

The result of an ID format conversion performed by the [translateExchangeIds](../api/user-translateexchangeids.md) function.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| errorDetails | [genericError](genericerror.md) | An error object indicating the reason for the conversion failure. This value isn't present if the conversion succeeded. |
| sourceId | String | The identifier that was converted. This value is the original, un-converted identifier. |
| targetId | String | The converted identifier. This value isn't present if the conversion failed. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "targetId",
    "errorDetails"
  ],
  "@odata.type": "microsoft.graph.convertIdResult"
}-->

```json
{
  "errorDetails": {
    "@odata.type": "microsoft.graph.genericError"
  },
  "sourceId": "String",
  "targetId": "String"
}
```

