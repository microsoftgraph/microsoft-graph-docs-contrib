---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.entitlement_management.resource_environments.resource_environments_request_builder import ResourceEnvironmentsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ResourceEnvironmentsRequestBuilder.ResourceEnvironmentsRequestBuilderGetQueryParameters(
		filter = "originSystem eq 'SharePointOnline'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.resource_environments.get(request_configuration = request_configuration)


```