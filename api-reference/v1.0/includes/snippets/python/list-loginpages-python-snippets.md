---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.security.attack_simulation.login_pages.login_pages_request_builder import LoginPagesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = LoginPagesRequestBuilder.LoginPagesRequestBuilderGetQueryParameters(
		filter = "source eq 'tenant'",
)

request_configuration = LoginPagesRequestBuilder.LoginPagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.attack_simulation.login_pages.get(request_configuration = request_configuration)


```