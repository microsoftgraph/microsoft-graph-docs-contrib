---
title: "levelMap resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# levelMap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseMapFeature](../resources/basemapfeature.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/buildingmap-list-levels.md)|[levelMap](../resources/levelmap.md) collection|Get a list of the levelMap objects and their properties.|
|[Create](../api/buildingmap-post-levels.md)|[levelMap](../resources/levelmap.md)|Create a new levelMap object.|
|[Get](../api/levelmap-get.md)|[levelMap](../resources/levelmap.md)|Read the properties and relationships of a levelMap object.|
|[Update](../api/levelmap-update.md)|[levelMap](../resources/levelmap.md)|Update the properties of a levelMap object.|
|[Delete](../api/buildingmap-delete-levels.md)|None|Delete a levelMap object.|
|[List fixtures](../api/levelmap-list-fixtures.md)|[fixtureMap](../resources/fixturemap.md) collection|**TODO: Add a useful description.**|
|[Create fixtureMap](../api/levelmap-post-fixtures.md)|[fixtureMap](../resources/fixturemap.md)|Create a new fixtureMap object.|
|[List sections](../api/levelmap-list-sections.md)|[sectionMap](../resources/sectionmap.md) collection|**TODO: Add a useful description.**|
|[Create sectionMap](../api/levelmap-post-sections.md)|[sectionMap](../resources/sectionmap.md)|Create a new sectionMap object.|
|[List units](../api/levelmap-list-units.md)|[unitMap](../resources/unitmap.md) collection|**TODO: Add a useful description.**|
|[Create unitMap](../api/levelmap-post-units.md)|[unitMap](../resources/unitmap.md)|Create a new unitMap object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|placeId|String|**TODO: Add Description**|
|properties|String|**TODO: Add Description** Inherited from [baseMapFeature](../resources/basemapfeature.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|fixtures|[fixtureMap](../resources/fixturemap.md) collection|**TODO: Add Description**|
|sections|[sectionMap](../resources/sectionmap.md) collection|**TODO: Add Description**|
|units|[unitMap](../resources/unitmap.md) collection|**TODO: Add Description**|

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

