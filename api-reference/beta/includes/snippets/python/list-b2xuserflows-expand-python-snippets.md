---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity.b2x_user_flows.b2x_user_flows_request_builder import B2xUserFlowsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = B2xUserFlowsRequestBuilder.B2xUserFlowsRequestBuilderGetQueryParameters(
		expand = ["identityProviders"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.b2x_user_flows.get(request_configuration = request_configuration)


```