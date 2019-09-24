---
title: "persistentBrowserSessionControl resource type"
description: "Session control to define whether to persist cookies or not."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# persistentBrowserSessionControl resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Session control to define whether to persist cookies or not.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|mode|String| Possible values are: `always`, `never`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.persistentBrowserSessionControl",
  "baseType": "self.conditionalAccessSessionControl"
}-->

```json
{
  "isEnabled": true,
  "mode": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "persistentBrowserSessionControl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->