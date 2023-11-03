---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = IncidentsRequestBuilder.IncidentsRequestBuilderGetQueryParameters(
		expand = ["alerts"],
)

request_configuration = IncidentsRequestBuilder.IncidentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.incidents.get(request_configuration = request_configuration)


```