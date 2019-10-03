---
title: "termFilter resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# termFilter resource type

A filter to scope on specific properties. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|field|String| Possible values are: `wellKnownFolderName`, `folderId`.|
|value|String||

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.termFilter",
  "baseType": null
}-->

```json
{
  "field": "String",
  "value": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "termFilter resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->