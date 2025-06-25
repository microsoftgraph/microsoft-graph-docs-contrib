---
title: "buildingMap resource type"
description: "Represents a building.geojson file in IMDF format."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: resourcePageType
---

# buildingMap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a building.geojson file in IMDF format.

Inherits from [baseMapFeature](./basemapfeature.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/building-post-map.md)|[buildingMap](./buildingmap.md)|Create a new **buildingMap** object for a [building](./building.md).|
|[Create footprintMap](../api/buildingmap-post-footprints.md)|[footprintMap](./footprintmap.md)|Create a new [footprintMap](./footprintmap.md) object for a [building](./building.md).|
|[Create levelMap](../api/buildingmap-post-levels.md)|[levelMap](./levelmap.md)|Create a new [levelMap](./levelmap.md) object for a [building](./building.md).|
|[Delete](../api/building-delete-map.md)|None|Delete a **buildingMap** object.|
|[Get](../api/buildingmap-get.md)|[buildingMap](./buildingmap.md)|Get the properties and relationships of a **buildingMap** object in IMDF format.|
|[List](../api/building-list-map.md)|[buildingMap](./buildingmap.md) collection|Get a list of **buildingMap** objects and their properties.|
|[List footprints](../api/buildingmap-list-footprints.md)|[footprintMap](./footprintmap.md) collection|Get a list of [footprintMap](./footprintmap.md) objects and their properties.|
|[List levels](../api/buildingmap-list-levels.md)|[levelMap](./levelmap.md) collection|Get a list of [levelMap](./levelmap.md) objects and their properties.|
|[Update](../api/buildingmap-update.md)|[buildingMap](./buildingmap.md)|Update the properties of a **buildingMap** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **buildingMapFeature** object. Inherited from [entity](./entity.md). |
|placeId|String|Unique identifier for the [building](./building.md) to which this **buildingMap** belongs. |
|properties|String|Concatenated key-value pair of all properties of a geojson file for this **buildingMap**. Inherited from [baseMapFeature](./basemapfeature.md).|

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
  "properties": "String",
  "placeId": "String"
}
```

