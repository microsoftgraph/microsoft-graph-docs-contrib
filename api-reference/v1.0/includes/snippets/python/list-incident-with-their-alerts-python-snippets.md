---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.security.incidents.incidents_request_builder import IncidentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = IncidentsRequestBuilder.IncidentsRequestBuilderGetQueryParameters(
		expand = ["alerts"],
)

request_configuration = IncidentsRequestBuilder.IncidentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.incidents.get(request_configuration = request_configuration)


```