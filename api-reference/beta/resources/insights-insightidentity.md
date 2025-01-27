---
title: "insightIdentity resource type"
description: "Complex type containing properties of Shared items."
author: "simonhult"
ms.localizationpriority: medium
ms.subservice: "insights"
doc_type: resourcePageType
ms.date: 10/04/2024
---

# insightIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complex type containing properties of [sharedInsight](insights-shared.md) items.

## Properties

| Property              | Type          | Description  |
| -------------         |-----------    | -------------|
| displayName      	| String	      | The display name of the user who shared the item. |
| id     		  | String        | The ID of the user who shared the item.     |
| address      	      | String	    | The email address of the user who shared the item.  |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.insightIdentity"
}-->
```json
{
  "displayName": "string",
  "id": "string",
  "address": "string"
}
```


