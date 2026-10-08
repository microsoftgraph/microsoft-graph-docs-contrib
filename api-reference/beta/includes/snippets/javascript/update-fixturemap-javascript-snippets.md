---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fixtureMap = {
  placeId: '67149ec1-4b99-42d4-88a4-d92cd23cb606',
  properties: '{\"id\':\'005eb3b8-c95d-4d35-a8a0-22d3cb4d6002\",\"type\':\'Feature\",\"feature_type\':\'fixture\",\"geometry\':{\'type\':\'Polygon\",\"coordinates\':[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\'properties\':{\'name\':{\'en\':\'Test Fixture update\"},\"level_id\':\'e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\':{\'type\':\'Point\",\"coordinates\':[-121.8888983,37.3295292]}}}"
};

await client.api('/places/91ac6c16-cda9-4506-b55d-e1f4dac3cbe7/microsoft.graph.building/map/levels/e537d463-475b-43c3-a650-184566c68bc9/fixtures/005eb3b8-c95d-4d35-a8a0-22d3cb4d6002')
	.version('beta')
	.update(fixtureMap);

```