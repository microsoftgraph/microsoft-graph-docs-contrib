---
title: "sectionMap resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# sectionMap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseMapFeature](../resources/basemapfeature.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/levelmap-list-sections.md)|[sectionMap](../resources/sectionmap.md) collection|Get a list of the sectionMap objects and their properties.|
|[Create](../api/levelmap-post-sections.md)|[sectionMap](../resources/sectionmap.md)|Create a new sectionMap object.|
|[Get](../api/sectionmap-get.md)|[sectionMap](../resources/sectionmap.md)|Read the properties and relationships of a sectionMap object.|
|[Update](../api/sectionmap-update.md)|[sectionMap](../resources/sectionmap.md)|Update the properties of a sectionMap object.|
|[Delete](../api/levelmap-delete-sections.md)|None|Delete a sectionMap object.|

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
  "@odata.type": "microsoft.graph.sectionMap",
  "baseType": "microsoft.graph.baseMapFeature",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sectionMap",
  "id": "String (identifier)",
  "properties": "String",
  "placeId": "String"
}
```

