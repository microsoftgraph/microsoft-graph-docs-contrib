---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = B2xUserFlowsRequestBuilder.B2xUserFlowsRequestBuilderGetQueryParameters(
		expand = ["identityProviders"],
)

request_configuration = B2xUserFlowsRequestBuilder.B2xUserFlowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.b2x_user_flows.get(request_configuration = request_configuration)


```