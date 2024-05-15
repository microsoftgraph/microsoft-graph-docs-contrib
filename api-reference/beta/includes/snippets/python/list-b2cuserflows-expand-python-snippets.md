---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity.b2c_user_flows.b2c_user_flows_request_builder import B2cUserFlowsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = B2cUserFlowsRequestBuilder.B2cUserFlowsRequestBuilderGetQueryParameters(
		expand = ["identityProviders"],
)

request_configuration = B2cUserFlowsRequestBuilder.B2cUserFlowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.b2c_user_flows.get(request_configuration = request_configuration)


```