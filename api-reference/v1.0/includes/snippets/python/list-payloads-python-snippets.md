---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = PayloadsRequestBuilder.PayloadsRequestBuilderGetQueryParameters(
		filter = "source eq 'Tenant'",
)

request_configuration = PayloadsRequestBuilder.PayloadsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.attack_simulation.payloads.get(request_configuration = request_configuration)


```