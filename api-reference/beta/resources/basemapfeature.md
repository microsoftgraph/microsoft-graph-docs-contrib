---
title: "baseMapFeature resource type"
description: "Represents different map types within a tenant."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: resourcePageType
---

# baseMapFeature resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type.

Inherits from [entity](./entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/basemapfeature-list.md)|[baseMapFeature](./basemapfeature.md) collection|Get a list of **baseMapFeature** objects and their properties.|
|[Get](../api/basemapfeature-get.md)|[baseMapFeature](./basemapfeature.md)|Get the properties and relationships of a **baseMapFeature** object in IMDF format.|
|[Update](../api/basemapfeature-update.md)|[baseMapFeature](./basemapfeature.md)|Update the properties of a **baseMapFeature** object.|
|[Delete](../api/basemapfeature-delete.md)|None|Delete a **baseMapFeature** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **baseMapFeature** object. Inherited from [entity](./entity.md). Inherits from [entity](./entity.md)|
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

