---
title: "levelMap resource type"
description: "Represents a level.geojson file in IMDF format showing the physical floor structure within a building."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# levelMap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a level.geojson file in IMDF format showing the physical floor structure within a building.

Inherits from [baseMapFeature](./basemapfeature.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/buildingmap-post-levels.md)|[levelMap](./levelmap.md)|Create a new **levelMap** object.|
|[Create fixtureMap](../api/levelmap-post-fixtures.md)|[fixtureMap](./fixturemap.md)|Create a new [fixtureMap](./fixturemap.md) object.|
|[Create sectionMap](../api/levelmap-post-sections.md)|[sectionMap](./sectionmap.md)|Create a new [sectionMap](./sectionmap.md) object.|
|[Create unitMap](../api/levelmap-post-units.md)|[unitMap](./unitmap.md)|Create a new [unitMap](./unitmap.md) object.|
|[Delete](../api/buildingmap-delete-levels.md)|None|Delete a **levelMap** object.|
|[Get](../api/levelmap-get.md)|[levelMap](./levelmap.md)|Get the properties and relationships of a **levelMap** object in IMDF format.|
|[List](../api/buildingmap-list-levels.md)|[levelMap](./levelmap.md) collection|Get a list of **levelMap** objects and their properties.|
|[List fixtures](../api/levelmap-list-fixtures.md)|[fixtureMap](./fixturemap.md) collection|Get a list of [fixtureMap](./fixturemap.md) objects and their properties.|
|[List sections](../api/levelmap-list-sections.md)|[sectionMap](./sectionmap.md) collection|Get a list of [sectionMap](./sectionmap.md) objects and their properties.|
|[List units](../api/levelmap-list-units.md)|[unitMap](./unitmap.md) collection|Get a list of the [unitMap](./unitmap.md) objects and their properties.|
|[Update](../api/levelmap-update.md)|[levelMap](./levelmap.md)|Update the properties of a **levelMap** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **levelMap** object. Inherited from [entity](./entity.md). Inherits from [entity](./entity.md)|
|placeId|String|Identifier of the [floor](./floor.md) to which this **levelMap** belongs.|
|properties|String|Concatenated key-value pair of all properties of a geojson file for this **levelMap**. Inherited from [baseMapFeature](./basemapfeature.md).|

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
  "value": [
    {
      "placeId": "40a5de8d-f169-41d6-aaaf-f07c21269adc",
      "id": "e537d463-475b-43c3-a650-184566c68bc9[ST36.1][KW36.2]",
      "properties": "{\"id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"type\":\"Feature\",\"feature_type\":\"level\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8891473,37.3297928],[-121.8893961,37.3299621],[-121.8894513,37.3300349],[-121.8894531,37.3300373],[-121.8900242,37.329764],[-121.8901096,37.3296945],[-121.8898523,37.3293547],[-121.8898407,37.3293601],[-121.8897741,37.3292754],[-121.8900648,37.3291363],[-121.890095,37.3291218],[-121.8902186,37.3290626],[-121.8902893,37.3290288],[-121.890306,37.3290208],[-121.8903241,37.3290121],[-121.8903448,37.3290023],[-121.8904115,37.3289703],[-121.8905398,37.3289089],[-121.8904671,37.328813],[-121.8902989,37.3285909],[-121.8903431,37.3285698],[-121.8900849,37.3282276],[-121.8899925,37.3281051],[-121.8899801,37.3280887],[-121.8897029,37.3277213],[-121.8893932,37.3278695],[-121.8893583,37.3278234],[-121.889263,37.3278691],[-121.8892979,37.3279151],[-121.8889445,37.3280843],[-121.8891129,37.3283067],[-121.8883222,37.3286852],[-121.8882612,37.3286045],[-121.8881734,37.3286454],[-121.8880921,37.3285367],[-121.8880906,37.3285348],[-121.8879295,37.3286539],[-121.8879744,37.3287081],[-121.8877977,37.3287926],[-121.8878163,37.3288172],[-121.8876396,37.3289018],[-121.8876686,37.3289402],[-121.887409,37.3290644],[-121.8873186,37.3291071],[-121.8870803,37.3292828],[-121.8869393,37.3293867],[-121.8870924,37.3295107],[-121.8870567,37.32954],[-121.887171,37.3296325],[-121.8874491,37.3298578],[-121.8875412,37.3299323],[-121.8875605,37.329948],[-121.8875651,37.3299517],[-121.8876704,37.3299012],[-121.8876825,37.3299172],[-121.8877675,37.3300294],[-121.8877788,37.3300444],[-121.8877818,37.3300483],[-121.887783,37.3300499],[-121.8878052,37.3300793],[-121.8878059,37.3300802],[-121.8878094,37.3300847],[-121.8878824,37.3301812],[-121.8883325,37.3299674],[-121.8883274,37.3299606],[-121.8882947,37.3299175],[-121.8884877,37.3298251],[-121.8885365,37.3298017],[-121.8885529,37.3297939],[-121.8885707,37.3298174],[-121.8885894,37.3298421],[-121.8886311,37.3298971],[-121.8886866,37.3299706],[-121.888774,37.3299287],[-121.8887889,37.3299484],[-121.8887977,37.3299442],[-121.8889657,37.3298638],[-121.8889744,37.3298596],[-121.8889595,37.3298399],[-121.8890401,37.3298013],[-121.8890469,37.3297981],[-121.8890589,37.3297923],[-121.8891236,37.3297614],[-121.8891473,37.3297928]]]},\"properties\":{\"name\":{\"en\":\"Test Floor 1\"},\"building_ids\":[\"26f04b4f-9ae2-45e3-99d1-393c66d58eb4\"],\"address_id\":\"e105efb7-b0d1-4144-8b8e-72eadf95724f\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.88904,37.3289553]},\"directory_id\":\"40a5de8d-f169-41d6-aaaf-f07c21269adc\",\"ordinal\":0}}"
    }
  ]
}
```
