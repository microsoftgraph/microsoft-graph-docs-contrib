---
title: "customMetadataDictionary resource type"
description: "Represents a dictionary specifically for storing custom metadata extracted from content, where values must be strings."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: low
ms.subservice: "security"
doc_type: resourcePageType
---

# customMetadataDictionary resource type

Namespace: microsoft.dataClassificationService.contract

Represents a dictionary specifically for storing custom metadata extracted from content, where values must be strings.

It's an open type but constrained to only accept string values for its dynamic properties.

## Properties

| Property    | Type   | Description                                                              |
| :---------- | :----- | :----------------------------------------------------------------------- |
| (dynamic)   | String | Represents dynamically added key-value pairs of custom content metadata. Keys are property names, values must be strings. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type. Specific properties depend on the custom metadata extracted.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customMetadataDictionary",
  "openType": true
}-->
``` json
{
  "@odata.type": "#microsoft.graph.customMetadataDictionary"
}
```
