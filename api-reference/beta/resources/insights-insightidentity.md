---
title: "insightIdentity"
description: "Complex type containing properties of Shared items."
author: "simonhult"
ms.localizationpriority: medium
ms.subservice: "insights"
doc_type: resourcePageType
---

# insightIdentity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complex type containing properties of [sharedInsight](insights-shared.md) items. 

## JSON representation
Here's a JSON representation of the resource

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

## Properties

| Property              | Type          | Description  |
| -------------         |-----------    | -------------|
| displayName      	| String	      | The display name of the user who shared the item. |
| id     		  | String        | The ID of the user who shared the item.     |
| address      	      | String	    | The email address of the user who shared the item.  |


