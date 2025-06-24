---
title: "fixtureMap resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# fixtureMap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseMapFeature](../resources/basemapfeature.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/levelmap-list-fixtures.md)|[fixtureMap](../resources/fixturemap.md) collection|Get a list of the fixtureMap objects and their properties.|
|[Create](../api/levelmap-post-fixtures.md)|[fixtureMap](../resources/fixturemap.md)|Create a new fixtureMap object.|
|[Get](../api/fixturemap-get.md)|[fixtureMap](../resources/fixturemap.md)|Read the properties and relationships of a fixtureMap object.|
|[Update](../api/fixturemap-update.md)|[fixtureMap](../resources/fixturemap.md)|Update the properties of a fixtureMap object.|
|[Delete](../api/levelmap-delete-fixtures.md)|None|Delete a fixtureMap object.|

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
  "@odata.type": "microsoft.graph.fixtureMap",
  "baseType": "microsoft.graph.baseMapFeature",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fixtureMap",
  "id": "String (identifier)",
  "properties": "String",
  "placeId": "String"
}
```

