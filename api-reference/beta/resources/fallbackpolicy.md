---
title: "fallbackPolicy resource type"
description: "Allows fallback policy to be specified for iOS endpoints only and is designed to be used for high-priority raw notifications. "
ms.localizationpriority: medium
author: "merzink"
ms.subservice: "notifications"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# fallbackPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Allows fallback policy to be specified for iOS endpoints only and is designed to be used for high-priority raw notifications that might not be delivered to devices due to platform specific restrictions (for example, battery saver mode).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| endpointFallback | [fallbackpolicyProperties](fallbackpolicyproperties.md) | EndpointFallback policy object handles notification fallback policy at an end point level and is currently limited to iOS. |   


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.fallbackpolicy",
  "baseType": null
}-->

```json
{
  "endpointFallback": {"@odata.type": "microsoft.graph.fallbackpolicyProperties"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "fallbackpolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


