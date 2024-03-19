---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.applications.applications_request_builder import ApplicationsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetQueryParameters(
		filter = "startswith(displayName, 'a')",
		count = True,
		top = 1,
		orderby = ["displayName"],
)

request_configuration = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.applications.get(request_configuration = request_configuration)


```