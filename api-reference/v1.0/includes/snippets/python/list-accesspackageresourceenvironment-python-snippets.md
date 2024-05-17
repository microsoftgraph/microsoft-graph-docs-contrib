---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.entitlement_management.resource_environments.resource_environments_request_builder import ResourceEnvironmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ResourceEnvironmentsRequestBuilder.ResourceEnvironmentsRequestBuilderGetQueryParameters(
		filter = "originSystem eq 'SharePointOnline'",
)

request_configuration = ResourceEnvironmentsRequestBuilder.ResourceEnvironmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.resource_environments.get(request_configuration = request_configuration)


```