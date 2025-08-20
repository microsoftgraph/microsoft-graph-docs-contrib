---
title: "buildingMap resource type"
description: "Represents a building.geojson file in IMDF format."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# buildingMap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Map file associated with a building in Places. This object is the IMDF format representation of building.geojson.

Inherits from [baseMapFeature](./basemapfeature.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/buildingmap-get.md)|[buildingMap](./buildingmap.md)|Get the properties and relationships of a **buildingMap** object in IMDF format.|
|[Delete](../api/buildingmap-delete.md)|None|Delete a **buildingMap** object.|
|[List footprints](../api/buildingmap-list-footprints.md)|[footprintMap](./footprintmap.md) collection|Get a list of [footprintMap](./footprintmap.md) objects and their properties.|
|[List levels](../api/buildingmap-list-levels.md)|[levelMap](./levelmap.md) collection|Get a list of [levelMap](./levelmap.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **buildingMapFeature** object. Inherited from [baseMapFeature](./basemapfeature.md). |
|placeId|String|Identifier for the [building](./building.md) to which this **buildingMap** belongs. |
|properties|String|Concatenated key-value pair of all properties of a GeoJSON file for this **buildingMap**. Inherited from [baseMapFeature](./basemapfeature.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|footprints|[footprintMap](./footprintmap.md) collection|Represents the approximate physical extent of a referenced [building](./building.md). Represents footprint.geojson in IMDF format.|
|levels|[levelMap](./levelmap.md) collection|Represents a physical floor structure within a building. Represents level.geojson in IMDF format.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.buildingMap",
  "baseType": "microsoft.graph.baseMapFeature",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.buildingMap",
  "id": "String (identifier)",
  "placeId": "String",
  "properties": "String"
}
```

