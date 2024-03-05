---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.delta.delta_request_builder import DeltaRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		select = ["displayName","jobTitle","mobilePhone"],
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.delta.get(request_configuration = request_configuration)


```