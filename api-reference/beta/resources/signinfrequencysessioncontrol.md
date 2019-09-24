---
title: "signInFrequencySessionControl resource type"
description: "Session control to enforce signin frequency."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# signInFrequencySessionControl resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Session control to enforce signin frequency.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|type|String| Possible values are: `days`, `hours`.|
|value|Int32||

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.signInFrequencySessionControl",
  "baseType": "self.conditionalAccessSessionControl"
}-->

```json
{
  "isEnabled": true,
  "type": "String",
  "value": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "signInFrequencySessionControl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->