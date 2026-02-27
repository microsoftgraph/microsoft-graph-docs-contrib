---
title: "conditionalAccessPlatforms resource type"
description: "Platforms included in and excluded from the policy scope."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# conditionalAccessPlatforms resource type

Namespace: microsoft.graph

Platforms included in and excluded from the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|excludePlatforms|conditionalAccessDevicePlatform collection| The possible values are: `android`, `iOS`, `windows`, `windowsPhone`, `macOS`, `linux`, `all`, `unknownFutureValue`.|
|includePlatforms|conditionalAccessDevicePlatform collection| The possible values are: `android`, `iOS`, `windows`, `windowsPhone`, `macOS`, `linux`, `all`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.conditionalAccessPlatforms",
  "baseType": null
}-->

```json
{
  "excludePlatforms": ["String"],
  "includePlatforms": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessPlatforms resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

