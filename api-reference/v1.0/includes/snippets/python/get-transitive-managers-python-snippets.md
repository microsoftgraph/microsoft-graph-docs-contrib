---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.me.me_request_builder import MeRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = MeRequestBuilder.MeRequestBuilderGetQueryParameters(
		expand = ["manager($levels=max;$select=id,displayName)"],
		select = ["id","displayName"],
)

request_configuration = MeRequestBuilder.MeRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.me.get(request_configuration = request_configuration)


```