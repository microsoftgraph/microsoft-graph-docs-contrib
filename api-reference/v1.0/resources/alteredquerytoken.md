---
title: "alteredQueryToken resource type"
description: "Represents changed segments related to an original user query."
ms.localizationpriority: medium
author: "njerigrevious"
ms.prod: "search"
doc_type: "resourcePageType"
---

# alteredQueryToken resource type

Namespace: microsoft.graph

Represents changed segments related to an original user query.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|length|Int32| Defines the length of a changed segment.|
|offset|Int32| Defines the offset of a changed segment.|
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
  "length": "Int32",
  "offset": "Int32",
  "suggestion": "String"
}
```
