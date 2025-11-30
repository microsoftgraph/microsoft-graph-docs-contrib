---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.unit_map import UnitMap
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnitMap(
	place_id = None,
	properties = "{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d3cb4d6542\",\"type\":\"Feature\",\"feature_type\":\"unit\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test room from Test Floor 1 (120.3)\"},\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]},\"category\":\"room\"}}",
)

result = await graph_client.places.by_place_id('place-id').graph_building.map.levels.by_level_map_id('levelMap-id').units.by_unit_map_id('unitMap-id').patch(request_body)


```