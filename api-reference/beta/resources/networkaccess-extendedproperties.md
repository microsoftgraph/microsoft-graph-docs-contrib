---
title: "extendedProperties resource type"
description: "Represents additional data for network access resources as key-value pairs. Used for extensibility."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# extendedProperties resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents additional data for network access resources as key-value pairs. Used for extensibility.

This resource is an open type, allowing arbitrary key-value pairs.

Inherits from [microsoft.graph.Dictionary](../resources/dictionary.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|key|String|The property name.|
|value|String|The property value.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.extendedProperties"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.extendedProperties",
  "customProperty1": "Value1",
  "customProperty2": 123
}
```
