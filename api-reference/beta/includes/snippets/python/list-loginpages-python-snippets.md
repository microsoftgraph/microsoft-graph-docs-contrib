---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.attack_simulation.login_pages.login_pages_request_builder import LoginPagesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = LoginPagesRequestBuilder.LoginPagesRequestBuilderGetQueryParameters(
		filter = "source eq 'tenant'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.attack_simulation.login_pages.get(request_configuration = request_configuration)


```