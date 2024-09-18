---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.device_management.virtual_endpoint.retrieve_scoped_permissions.retrieve_scoped_permissions_request_builder import RetrieveScopedPermissionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = RetrieveScopedPermissionsRequestBuilder.RetrieveScopedPermissionsRequestBuilderGetQueryParameters(
		filter = "permission in ('Microsoft.CloudPC/ProvisioningPolicies/Update','Microsoft.CloudPC/ProvisioningPolicies/Create')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.retrieve_scoped_permissions.get(request_configuration = request_configuration)


```