---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.directory_objects.delta.delta_request_builder import DeltaRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		filter = "isof('microsoft.graph.user') or isof('microsoft.graph.group')",
		select = ["microsoft.graph.user/surname","microsoft.graph.group/displayName"],
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory_objects.delta.get(request_configuration = request_configuration)


```