---
title: "sortProperty resource type"
description: "Indicates the order to sort search results"
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 08/08/2024
---

# sortProperty resource type

Namespace: microsoft.graph

Indicates the order to sort search results.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|isDescending|Boolean|`True` if the sort order is descending. Default is `false`, with the sort order as ascending. Optional.|
|name|String|The name of the property to sort on. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sortProperty",
  "baseType": null
}-->

```json
{
  "name": "String",
  "isDescending": "true"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sortProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
