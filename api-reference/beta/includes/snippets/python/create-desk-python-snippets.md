---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.desk import Desk
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Desk(
	odata_type = "microsoft.graph.desk",
	display_name = "D1",
	parent_id = "1ad0f725-6885-49c5-9a47-3b22a1f9409d",
)

result = await graph_client.places.post(request_body)


```