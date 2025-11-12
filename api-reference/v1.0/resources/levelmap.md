---
title: "levelMap resource type"
description: "Represents a level.geojson file in IMDF format that defines the physical floor structure within a building."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# levelMap resource type

Namespace: microsoft.graph

Represents a level.geojson file in IMDF format that defines the physical floor structure within a [building](../resources/building.md).

Inherits from [baseMapFeature](../resources/basemapfeature.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/levelmap-list.md)|[levelMap](../resources/levelmap.md) collection|Get a list of the levelMap objects and their properties.|
|[Get](../api/levelmap-get.md)|[levelMap](../resources/levelmap.md)|Read the properties and relationships of [levelMap](../resources/levelmap.md) object.|
|[Update](../api/levelmap-update.md)|[levelMap](../resources/levelmap.md)|Update the properties of a levelMap object.|
|[Delete](../api/levelmap-delete.md)|None|Delete a levelMap object.|
|[List fixtures](../api/levelmap-list-fixtures.md)|[fixtureMap](../resources/fixturemap.md) collection|Get a list of the [fixtureMap](../resources/fixturemap.md) objects and their properties.|
|[Create fixtureMap](../api/levelmap-post-fixtures.md)|[fixtureMap](../resources/fixturemap.md)|Create a new fixtureMap object.|
|[List sections](../api/levelmap-list-sections.md)|[sectionMap](../resources/sectionmap.md) collection|Get a list of the [sectionMap](../resources/sectionmap.md) objects and their properties.|
|[Create sectionMap](../api/levelmap-post-sections.md)|[sectionMap](../resources/sectionmap.md)|Create a new sectionMap object.|
|[List units](../api/levelmap-list-units.md)|[unitMap](../resources/unitmap.md) collection|Get a list of the [unitMap](../resources/unitmap.md) objects and their properties.|
|[Create unitMap](../api/levelmap-post-units.md)|[unitMap](../resources/unitmap.md)|Create a new unitMap object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **levelMap** object. Inherited from [baseMapFeature](./basemapfeature.md).|
|placeId|String|Identifier of the [floor](./floor.md) to which this **levelMap** belongs.|
|properties|String|Concatenated key-value pair of all properties of a GeoJSON file for this **levelMap**. Inherited from [baseMapFeature](./basemapfeature.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|fixtures|[fixtureMap](./fixturemap.md) collection|Collection of fixtures (such as furniture or equipment) on this level. Supports upsert.|
|sections|[sectionMap](./sectionmap.md) collection|Collection of sections (such as zones or partitions) on this level. Supports upsert.|
|units|[unitMap](./unitmap.md) collection|Collection of units (such as rooms or offices) on this level. Supports upsert.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.levelMap",
  "baseType": "microsoft.graph.baseMapFeature",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.levelMap",
  "id": "String (identifier)",
  "properties": "String",
  "placeId": "String"
}
```

