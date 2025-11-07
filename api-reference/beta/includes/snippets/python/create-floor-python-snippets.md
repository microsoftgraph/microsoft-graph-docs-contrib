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
	display_name = "F1",
	parent_id = "767a31a7-6987-41c9-b829-ab351b8aab53",
)

result = await graph_client.places.post(request_body)


```