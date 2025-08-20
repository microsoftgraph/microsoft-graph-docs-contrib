---
title: "baseMapFeature resource type"
description: "Represents different map types within a tenant."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# baseMapFeature resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type that all other map types inherit. 
Inherits from [entity](./entity.md).


## Methods
|Method|Return type|Description|
kuanhsiungwu marked this conversation as resolved.
Outdated
|:---|:---|:---|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **baseMapFeature** object. Inherited from [entity](./entity.md). |
|properties|String|Concatenated key-value pair of all properties of a geojson file for this **baseMapFeature**.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.baseMapFeature",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.baseMapFeature",
  "id": "String (identifier)",
  "properties": "String"
}
```