---
title: "resourceReference resource type"
description: "Complex type containing properties of Insights."
author: "simonhult"
ms.localizationpriority: medium
ms.subservice: "insights"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# resourceReference resource type

Namespace: microsoft.graph

Complex type containing properties of [officeGraphInsights](officegraphinsights.md).

## Properties

| Property      | Type      | Description  |
| ------------- |-----------| -------------|
| id     		| String    | The item's unique identifier.           |
| type 			| String   	| A string value that can be used to classify the item, such as "microsoft.graph.driveItem" |
| webUrl      	| String	| A URL leading to the referenced item. |

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
