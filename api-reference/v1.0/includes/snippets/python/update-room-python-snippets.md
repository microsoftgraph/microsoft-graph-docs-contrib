---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.room import Room
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Room(
	odata_type = "microsoft.graph.room",
	nickname = "Conf Room",
	building = "1",
	label = "100",
	capacity = 50,
	is_wheel_chair_accessible = False,
)

result = await graph_client.places.by_place_id('place-id').patch(request_body)


```