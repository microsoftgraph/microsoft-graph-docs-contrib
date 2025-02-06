---
title: "workbookFormatProtection resource type"
description: "Represents the format protection of a range object."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: excel
author: "ruoyingl"
ms.date: 08/01/2024
---

# workbookFormatProtection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the format protection of a range object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/workbookformatprotection-get.md) | [workbookFormatProtection](workbookformatprotection.md) |Read the properties and relationships of a workbookFormatProtection object.|
|[Update](../api/workbookformatprotection-update.md) | [workbookFormatProtection](workbookformatprotection.md)	|Update a workbookFormatProtection object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|formulaHidden|Boolean|Indicates whether Excel hides the formula for the cells in the range. A null value indicates that the entire range doesn't have uniform formula hidden setting.|
|locked|Boolean|Indicates whether Excel locks the cells in the object. A null value indicates that the entire range doesn't have uniform lock setting.|

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.formatProtection"
}-->

```json
{
  "formulaHidden": true,
  "locked": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "FormatProtection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


