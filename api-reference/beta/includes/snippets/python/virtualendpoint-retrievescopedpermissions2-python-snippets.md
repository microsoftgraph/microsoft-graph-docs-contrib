---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.device_management.virtual_endpoint.retrieve_scoped_permissions.retrieve_scoped_permissions_request_builder import RetrieveScopedPermissionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = RetrieveScopedPermissionsRequestBuilder.RetrieveScopedPermissionsRequestBuilderGetQueryParameters(
		filter = "permission in ('Microsoft.CloudPC/ProvisioningPolicies/Update','Microsoft.CloudPC/ProvisioningPolicies/Create')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.retrieve_scoped_permissions.get(request_configuration = request_configuration)


```