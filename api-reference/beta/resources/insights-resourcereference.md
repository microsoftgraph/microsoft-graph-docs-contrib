---
title: "resourceReference resource type"
description: "Complex type containing properties of Insights."
author: "simonhult"
ms.localizationpriority: medium
ms.subservice: "insights"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# resourceReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complex type containing properties of [itemInsights](iteminsights.md)

## Properties

| Property      | Type      | Description  |
|: ------------- |: -----------|: -------------|
| webUrl      	| String	| A URL leading to the referenced item. |
| id     		| String    | The item's unique identifier.           |
| type 			| String   	|It can be used to classify the item, such as **driveItem**. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.resourceReference"
}-->
```json
{
  "webUrl": "string",
  "id": "string",
  "type": "string"
}
```


