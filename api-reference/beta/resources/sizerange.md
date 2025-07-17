---
title: "sizeRange resource type"
description: "Specifies the maximum and minimum sizes (in kilobytes) that an incoming message must have in order for a condition or exception to apply."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: mail
author: "SuryaLashmiS"
ms.date: 03/21/2024
---

# sizeRange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the maximum and minimum sizes (in kilobytes) that an incoming message must have in order for a condition or exception to apply.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| maximumSize | Int32 | The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply. |
| minimumSize | Int32 | The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply. |


## Relationships
None.

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
<!--
{
  "type": "#page.annotation",
  "description": "sizeRange resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


