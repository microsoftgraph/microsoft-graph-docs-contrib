---
title: "footprintMap resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# footprintMap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseMapFeature](../resources/basemapfeature.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/buildingmap-list-footprints.md)|[footprintMap](../resources/footprintmap.md) collection|Get a list of the footprintMap objects and their properties.|
|[Create](../api/buildingmap-post-footprints.md)|[footprintMap](../resources/footprintmap.md)|Create a new footprintMap object.|
|[Get](../api/footprintmap-get.md)|[footprintMap](../resources/footprintmap.md)|Read the properties and relationships of a footprintMap object.|
|[Update](../api/footprintmap-update.md)|[footprintMap](../resources/footprintmap.md)|Update the properties of a footprintMap object.|
|[Delete](../api/buildingmap-delete-footprints.md)|None|Delete a footprintMap object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|properties|String|**TODO: Add Description** Inherited from [baseMapFeature](../resources/basemapfeature.md).|

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

