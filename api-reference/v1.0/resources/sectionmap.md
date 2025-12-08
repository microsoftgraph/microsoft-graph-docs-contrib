---
title: "sectionMap resource type"
description: "Represents a section.geojson file in IMDF format that defines sections (such as zones or partitions) on the floor of a building."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# sectionMap resource type

Namespace: microsoft.graph

Represents a section.geojson file in IMDF format that defines sections (such as zones or partitions) on the floor of a [building](../resources/building.md).

Inherits from [baseMapFeature](../resources/basemapfeature.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/levelmap-list-sections.md)|[sectionMap](./sectionmap.md) collection|Get a list of the [sectionMap](../resources/sectionmap.md) objects and their properties.|
|[Update](../api/sectionmap-update.md)|[sectionMap](../resources/sectionmap.md)|Update the properties of an existing [sectionMap](../resources/sectionmap.md) object in IMDF format on a specified floor, or create one if it doesn't exist.|
|[Delete](../api/sectionmap-delete.md)|None|Delete a [sectionMap](../resources/sectionmap.md) object on a specified floor.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **sectionMap** object. Inherited from [baseMapFeature](../resources/basemapfeature.md). |
|placeId|String|Identifier of the [section](./section.md) to which this **sectionMap** belongs.|
|properties|String|Concatenated key-value pair of all properties of a GeoJSON file for this **sectionMap**. Inherited from [baseMapFeature](../resources/basemapfeature.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sectionMap",
  "baseType": "microsoft.graph.baseMapFeature",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sectionMap",
  "id": "String (identifier)",
  "placeId": "String",
  "properties": "String"
}
```

