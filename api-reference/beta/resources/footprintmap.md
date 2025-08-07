---
title: "footprintMap resource type"
description: "Represents a footprint.geojson file in IMDF format showing the approximate physical extent of a referenced building."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# footprintMap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a footprint.geojson file in IMDF format showing the approximate physical extent of a referenced building.

Inherits from [baseMapFeature](./basemapfeature.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/buildingmap-post-footprints.md)|[footprintMap](./footprintmap.md)|Create a new **footprintMap** object.|
|[Delete](../api/buildingmap-delete-footprints.md)|None|Delete a **footprintMap** object.|
|[Get](../api/footprintmap-get.md)|[footprintMap](./footprintmap.md)|Get the properties and relationships of a **footprintMap** object in IMDF format.|
|[List](../api/buildingmap-list-footprints.md)|[footprintMap](./footprintmap.md) collection|Get a list of **footprintMap** objects and their properties.|
|[Update](../api/footprintmap-update.md)|[footprintMap](./footprintmap.md)|Update the properties of a **footprintMap** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **footprintMap** object. Inherited from [entity](./entity.md). Inherits from [entity](./entity.md)|
|properties|String|Concatenated key-value pair of all properties of a geojson file for this **footprintMap**. Inherited from [baseMapFeature](./basemapfeature.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.footprintMap",
  "baseType": "microsoft.graph.baseMapFeature",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.footprintMap",
  "id": "String (identifier)",
  "properties": "String"
}
```

