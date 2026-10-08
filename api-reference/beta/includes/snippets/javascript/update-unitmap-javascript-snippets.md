---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unitMap = {
  placeId: null,
  properties: '{\"id\':\'005eb3b8-c95d-4d35-a8a0-22d3cb4d6542\",\"type\':\'Feature\",\"feature_type\':\'unit\",\"geometry\':{\'type\':\'Polygon\",\"coordinates\':[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\'properties\':{\'name\':{\'en\':\'Test room from Test Floor 1 (120.3)\"},\"level_id\':\'e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\':{\'type\':\'Point\",\"coordinates\':[-121.8888983,37.3295292]},\'category\':\"room\"}}"
};

await client.api('/places/30ca79af-ecb7-46c2-a14b-afe264a91543/microsoft.graph.building/map/levels/81e9fd76-b34a-45f6-a6dc-1f172f01e849/units/005eb3b8-c95d-4d35-a8a0-22d3cb4d6542')
	.version('beta')
	.update(unitMap);

```