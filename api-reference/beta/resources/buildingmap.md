---
title: "buildingMap resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# buildingMap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseMapFeature](../resources/basemapfeature.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/building-list-map.md)|[buildingMap](../resources/buildingmap.md) collection|Get a list of the buildingMap objects and their properties.|
|[Create](../api/building-post-map.md)|[buildingMap](../resources/buildingmap.md)|Create a new buildingMap object.|
|[Get](../api/buildingmap-get.md)|[buildingMap](../resources/buildingmap.md)|Read the properties and relationships of a buildingMap object.|
|[Update](../api/buildingmap-update.md)|[buildingMap](../resources/buildingmap.md)|Update the properties of a buildingMap object.|
|[Delete](../api/building-delete-map.md)|None|Delete a buildingMap object.|
|[List footprints](../api/buildingmap-list-footprints.md)|[footprintMap](../resources/footprintmap.md) collection|**TODO: Add a useful description.**|
|[Create footprintMap](../api/buildingmap-post-footprints.md)|[footprintMap](../resources/footprintmap.md)|Create a new footprintMap object.|
|[List levels](../api/buildingmap-list-levels.md)|[levelMap](../resources/levelmap.md) collection|**TODO: Add a useful description.**|
|[Create levelMap](../api/buildingmap-post-levels.md)|[levelMap](../resources/levelmap.md)|Create a new levelMap object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|placeId|String|**TODO: Add Description**|
|properties|String|**TODO: Add Description** Inherited from [baseMapFeature](../resources/basemapfeature.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|footprints|[footprintMap](../resources/footprintmap.md) collection|**TODO: Add Description**|
|levels|[levelMap](../resources/levelmap.md) collection|**TODO: Add Description**|

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

