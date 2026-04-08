---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.workspace import Workspace
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Workspace(
	odata_type = "microsoft.graph.workspace",
	nickname = "Conf Room",
	label = "100",
	capacity = 50,
	is_wheel_chair_accessible = False,
	additional_data = {
			"building" : "1",
	}
)

result = await graph_client.places.by_place_id('place-id').patch(request_body)


```