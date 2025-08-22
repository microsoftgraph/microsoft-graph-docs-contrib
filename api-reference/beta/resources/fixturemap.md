---
title: "fixtureMap resource type"
description: "Represents a fixture.geojson file in IMDF format that defines movable or semi-permanent physical assets within a space."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# fixtureMap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a fixture.geojson file in IMDF format that defines movable or semi-permanent physical assets within a space. These assets support utility, service, or aesthetic functions without affecting structural integrity.

Inherits from [baseMapFeature](./basemapfeature.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/levelmap-post-fixtures.md)|[fixtureMap](./fixturemap.md)|Create a new **fixtureMap** object.|
|[Update](../api/fixturemap-update.md)|[fixtureMap](./fixturemap.md)|Update the properties of a **fixtureMap** object.|
|[Delete](../api/fixturemap-delete.md)|None|Delete a **fixtureMap** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **fixtureMap** object. Inherited from [baseMapFeature](./basemapfeature.md). |
|placeId|String|Identifier for the [floor](./floor.md) to which this **fixtureMap** belongs. |
|properties|String|Concatenated key-value pair of all properties of a GeoJSON file for this **fixtureMap**. Inherited from [baseMapFeature](./basemapfeature.md).|

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
  "placeId": "String",
  "properties": "String"
}
```

