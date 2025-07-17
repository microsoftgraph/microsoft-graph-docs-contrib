---
title: "sizeRange resource type"
description: "Specifies the maximum and minimum sizes (in kilobytes) that an incoming message must have in order for a condition or exception to apply."
ms.localizationpriority: medium
author: "SuryaLashmiS"
ms.subservice: outlook
doc_type: resourcePageType
ms.date: 04/03/2024
---

# sizeRange resource type

Namespace: microsoft.graph


Specifies the maximum and minimum sizes (in kilobytes) that an incoming message must have in order for a condition or exception to apply.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| maximumSize | Int32 | The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply. |
| minimumSize | Int32 | The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply. |


## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
   ],
  "@odata.type": "microsoft.graph.sizeRange"
}-->

```json
{
  "maximumSize": "Int32",
  "minimumSize": "Int32"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sizeRange resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

