---
title: "detectedSensitiveContent resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# detectedSensitiveContent resource type

[!INCLUDE beta-disclaimer]

PROVIDE DESCRIPTION HERE

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|confidence|Int32||
|displayName|String||
|id|Guid||
|matches|[sensitiveContentLocation](sensitivecontentlocation.md) collection||
|uniqueCount|Int32||

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.detectedSensitiveContent",
  "baseType": null
}-->

```json
{
  "confidence": 1024,
  "displayName": "String",
  "id": "Guid",
  "matches": [{"@odata.type": "microsoft.graph.sensitiveContentLocation"}],
  "uniqueCount": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "detectedSensitiveContent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->