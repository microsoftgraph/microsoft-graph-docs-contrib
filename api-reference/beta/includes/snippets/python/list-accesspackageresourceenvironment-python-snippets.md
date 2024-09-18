---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity_governance.entitlement_management.access_package_resource_environments.access_package_resource_environments_request_builder import AccessPackageResourceEnvironmentsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageResourceEnvironmentsRequestBuilder.AccessPackageResourceEnvironmentsRequestBuilderGetQueryParameters(
		filter = "originSystem eq 'SharePointOnline'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_resource_environments.get(request_configuration = request_configuration)


```