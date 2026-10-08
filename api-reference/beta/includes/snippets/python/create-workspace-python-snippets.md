---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.workspace import Workspace
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Workspace(
	odata_type = "microsoft.graph.workspace",
	parent_id = "f7de7265-e420-47b4-9d49-28d728716241",
	display_name = "testSpace001",
	tags = [
		"test",
	],
)

result = await graph_client.places.post(request_body)


```