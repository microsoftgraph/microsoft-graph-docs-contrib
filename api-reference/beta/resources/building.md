---
title: "building resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# building resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a building within the tenant.

Inherits from [place](../resources/place.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/building-list.md)|[building](./building.md) collection|Get a list of the building objects and their properties.|
|[Get](../api/building-get.md)|[building](./building.md)|Read the properties and relationships of a building object.|
|[Update](../api/building-update.md)|[building](./building.md)|Update the properties of a building object.|
|[Delete](../api/building-delete.md)|None|Delete a building object.|
|[descendants](../api/building-descendants.md)|[place](./place.md) collection|Returns the list of descendant [place](../resources/place.md) objects of a specific type (for example, [floors](./floor.md), [sections](./section.md), [rooms](./room.md), [desks](./desk.md), or [workspaces](./workspace.md)) under a given **building**.|
|[ingestMapFile](../api/building-ingestmapfile.md)|None|**TODO: Add Description**|
|[List buildingMap](../api/building-list-map.md)|[buildingMap](../resources/buildingmap.md) collection|**TODO: Add a useful description.**|
|[Add buildingMap](../api/building-post-map.md)|[buildingMap](../resources/buildingmap.md)|Add map by posting to the map collection.|
|[Remove buildingMap](../api/building-delete-map.md)|None|Remove a [buildingMap](../resources/buildingmap.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|displayName|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|hasWiFi|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|phone|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|
|placeId|String|**TODO: Add Description** Inherited from [place](../resources/place.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|map|[buildingMap](../resources/buildingmap.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.building",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.building",
  "id": "String (identifier)",
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "placeId": "String",
  "parentId": "String",
  "resourceLinks": [
    {
      "@odata.type": "microsoft.graph.resourceLink"
    }
  ],
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "hasWiFi": "Boolean"
}
```

