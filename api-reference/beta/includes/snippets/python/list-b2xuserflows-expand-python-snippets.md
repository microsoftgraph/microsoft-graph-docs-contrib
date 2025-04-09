---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity.b2x_user_flows.b2x_user_flows_request_builder import B2xUserFlowsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = B2xUserFlowsRequestBuilder.B2xUserFlowsRequestBuilderGetQueryParameters(
		expand = ["identityProviders"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.b2x_user_flows.get(request_configuration = request_configuration)


```