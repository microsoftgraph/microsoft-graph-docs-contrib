---
title: insightIdentity complex type
description: "Complex type containing properties of Shared items."
author: "simonhult"
ms.localizationpriority: medium
ms.subservice: "insights"
doc_type: resourcePageType
---

# insightIdentity complex type

Namespace: microsoft.graph

Complex type containing properties of [sharedInsight](insights-shared.md) items.

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

## Properties

| Property              | Type          | Description  |
| -------------         |-----------    | -------------|
| address      	      | String	    | The email address of the user who shared the item.  |
| displayName      	| String	      | The display name of the user who shared the item. |
| id     		  | String        | The ID of the user who shared the item.     |

