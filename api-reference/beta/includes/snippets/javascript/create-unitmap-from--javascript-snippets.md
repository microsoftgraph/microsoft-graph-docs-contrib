---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unitMap = {
  properties: '{\"id\':\'005eb3b8-c95d-4d35-a8a0-22d3cb4d6996\",\"type\':\'Feature\",\"feature_type\':\'unit\",\"geometry\':{\'type\':\'Polygon\",\"coordinates\':[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\'properties\':{\'name\':{\'en\':\'Test Create room111111111111\"},\"level_id\':\'e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\':{\'type\':\'Point\",\"coordinates\':[-121.8888983,37.3295292]},\'category\':\"room\"}}"
};

await client.api('/places/151e85a7-c0b8-4519-997e-1a0858255704/microsoft.graph.building/map/levels/e537d463-475b-43c3-a650-184566c68bc9/units/test0613-c95d-4d35-a8a0-22d3cb4d6542')
	.version('beta')
	.update(unitMap);

```