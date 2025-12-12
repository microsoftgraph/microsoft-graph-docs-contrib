---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.building import Building
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Building(
	odata_type = "microsoft.graph.building",
	tags = [
		"most popular building",
	],
)

result = await graph_client.places.by_place_id('place-id').patch(request_body)


```