---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.root.root_request_builder import RootRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RootRequestBuilder.RootRequestBuilderGetQueryParameters(
		expand = ["children"],
)

request_configuration = RootRequestBuilder.RootRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.drives.by_drive_id('drive-id').root.get(request_configuration = request_configuration)


```