---
title: "alteredQueryToken resource type"
description: "Represents changed segments with respect to original query."
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# alteredQueryToken resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents changed segments with respect to original query.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|offset|Int32| Defines the offset of a changed segment in original query|
|length|Int32| Defines the length of a changed segment in original query|
|suggestion|String| Represents the corrected segment string.|

## JSON representation

The following is a JSON representation of the resource.

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