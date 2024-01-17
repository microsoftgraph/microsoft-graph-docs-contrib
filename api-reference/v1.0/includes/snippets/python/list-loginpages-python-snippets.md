---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = LoginPagesRequestBuilder.LoginPagesRequestBuilderGetQueryParameters(
		filter = "source eq 'tenant'",
)

request_configuration = LoginPagesRequestBuilder.LoginPagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.attack_simulation.login_pages.get(request_configuration = request_configuration)


```