---
title: "stringDictionary resource type"
description: "Represents a set of custom properties that have string keys and string values."
author: wq137469537
ms.date: 08/31/2026
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# stringDictionary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a set of custom properties that have string keys and string values. The [place](../resources/place.md) resource uses this type for its **customProperties** property.

Inherits from [dictionary](../resources/dictionary.md).

## Properties

A **stringDictionary** contains a dynamic set of properties. Each property name is a string key, and each property value must be a string or `null`. A `null` value is used only when updating a dictionary entry to remove it.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.stringDictionary",
  "baseType": "microsoft.graph.Dictionary",
  "openType": true
} -->
```json
{
  "String": "String"
}
```
