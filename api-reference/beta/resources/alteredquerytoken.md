---
title: "alteredQueryToken resource type"
description: "Represents changed segments with respect to original user query."
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 07/25/2024
---

# alteredQueryToken resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents changed segments with respect to original user query.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|offset|Int32| Defines the offset of a changed segment.|
|length|Int32| Defines the length of a changed segment.|
|suggestion|String| Represents the corrected segment string.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.alteredQueryToken",
  "baseType": null
}-->

```json
{
  "offset": 0,
  "length": 6,
  "suggestion": "String"
}
```
