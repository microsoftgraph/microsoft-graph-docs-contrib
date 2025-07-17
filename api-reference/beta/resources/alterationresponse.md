---
title: "alterationResponse resource type"
description: "Provides information related to spelling corrections in the alteration response."
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 07/25/2024
---

# alterationResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides information related to spelling corrections in the alteration response.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|originalQueryString|String| Defines the original user query string.|
|queryAlteration|[searchAlteration](searchalteration.md)| Defines the details of alteration information for the spelling correction.|
|queryAlterationType|searchAlterationType| Defines the type of the spelling correction. Possible values are `suggestion`, `modification`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.alterationResponse",
  "baseType": null
}-->

```json
{
  "originalQueryString": "String",
  "queryAlteration": "String",
  "queryAlterationType": "suggestion"
}
```
