---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FixtureMap fixtureMap = new FixtureMap();
fixtureMap.setPlaceId("67149ec1-4b99-42d4-88a4-d92cd23cb606");
fixtureMap.setProperties("{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d3cb4d6002\",\"type\":\"Feature\",\"feature_type\":\"fixture\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test Fixture 01\"},\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]}}}");
FixtureMap result = graphClient.places().byPlaceId("{place-id}").graphBuilding().map().levels().byLevelMapId("{levelMap-id}").fixtures().byFixtureMapId("{fixtureMap-id}").patch(fixtureMap);


```