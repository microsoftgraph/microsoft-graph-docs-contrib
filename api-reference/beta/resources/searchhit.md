---
title: "searchHit resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# searchHit resource type

Represent a single result within the list of search results. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|_id|String||
|_score|Int32||
|_sortField|String||
|_summary|String||

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchHit",
  "baseType": null
}-->

```json
{
  "_id": "String",
  "_score": 1024,
  "_sortField": "String",
  "_summary": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchHit resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->