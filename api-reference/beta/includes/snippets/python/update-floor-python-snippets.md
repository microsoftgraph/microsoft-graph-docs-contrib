---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.floor import Floor
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Floor(
	odata_type = "microsoft.graph.floor",
	is_wheel_chair_accessible = True,
	sort_order = 2,
)

result = await graph_client.places.by_place_id('place-id').patch(request_body)


```