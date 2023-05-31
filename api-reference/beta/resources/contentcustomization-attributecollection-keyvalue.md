---
title: "keyValuePair resource type"
description: "Contains key value pairs of attribute collection content for a tenant"
author: "AlexanderMars"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# keyValuePair resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Key value pair of attribute collection content for a tenant

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Name for this key-value pair|
|value|String|Value for this key-value pair|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.keyValuePair"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.keyValuePair",
  "name": "String",
  "value": "String"
}
```
