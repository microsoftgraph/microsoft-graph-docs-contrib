---
title: "unitMap resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# unitMap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseMapFeature](../resources/basemapfeature.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/levelmap-list-units.md)|[unitMap](../resources/unitmap.md) collection|Get a list of the unitMap objects and their properties.|
|[Create](../api/levelmap-post-units.md)|[unitMap](../resources/unitmap.md)|Create a new unitMap object.|
|[Get](../api/unitmap-get.md)|[unitMap](../resources/unitmap.md)|Read the properties and relationships of an unitMap object.|
|[Update](../api/unitmap-update.md)|[unitMap](../resources/unitmap.md)|Update the properties of an unitMap object.|
|[Delete](../api/levelmap-delete-units.md)|None|Delete an unitMap object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|placeId|String|**TODO: Add Description**|
|properties|String|**TODO: Add Description** Inherited from [baseMapFeature](../resources/basemapfeature.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unitMap",
  "baseType": "microsoft.graph.baseMapFeature",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unitMap",
  "id": "String (identifier)",
  "properties": "String",
  "placeId": "String"
}
```

