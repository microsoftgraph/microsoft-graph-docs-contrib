---
title: "footprintMap resource type"
description: "Represents a footprint.geojson file in IMDF format that defines the approximate physical extent of a referenced building."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# footprintMap resource type

Namespace: microsoft.graph

Represents a footprint.geojson file in IMDF format that defines the approximate physical extent of a referenced [building](./building.md).

Inherits from [baseMapFeature](../resources/basemapfeature.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/buildingmap-list-footprints.md)|[footprintMap](./footprintmap.md) collection|Get a list of [footprintMap](../resources/footprintmap.md) objects for [building](../resources/building.md) footprints and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **footprintMap** object. Inherited from [baseMapFeature](./basemapfeature.md).|
|properties|String|Concatenated key-value pair of all properties of a GeoJSON file for this **footprintMap**. Inherited from [baseMapFeature](./basemapfeature.md).|

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

