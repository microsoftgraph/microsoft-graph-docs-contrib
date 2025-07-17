---
title: "collapseProperty resource type"
description: "Specifies the collapse criteria of search results."
ms.localizationpriority: medium
author: "cxiang"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 08/08/2024
---

# collapseProperty resource type

Namespace: microsoft.graph

Specifies the criteria used for collapsing search results. Applies only to sortable/refinable properties.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|fields|String Collection| Defines the collapse group to trim results. The properties in this collection must be sortable/refinable properties. Required.|
|limit|Int16| Defines a maximum limit count for this field. This numeric value must be a positive integer. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ], 
  "@odata.type": "microsoft.graph.collapseProperty",
  "baseType": null
}-->

```json
{
  "fields": ["String"],
  "limit": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "collapseProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
