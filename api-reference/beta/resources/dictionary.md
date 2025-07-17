---
title: "Dictionary resource type"
description: "A dictionary of name-value pairs that allows arbitrary key-value pairs to be stored as open type properties."
author: "miritsadon"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# Dictionary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A dictionary of name-value pairs that allows arbitrary key-value pairs to be stored as open type properties. This is a base type that other resources can inherit from to support extensible properties.

Base type of [extendedProperties](../resources/networkaccess-extendedproperties.md)

## Properties
This resource is an open type, allowing arbitrary key-value pairs. Names must be valid property names, and values may be restricted to specific types via annotations with term `Validation.OpenPropertyTypeConstraint`.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.Dictionary",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.Dictionary"
}
```
