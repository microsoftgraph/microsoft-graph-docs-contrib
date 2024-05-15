---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.entitlement_management.access_package_resource_environments.access_package_resource_environments_request_builder import AccessPackageResourceEnvironmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageResourceEnvironmentsRequestBuilder.AccessPackageResourceEnvironmentsRequestBuilderGetQueryParameters(
		filter = "originSystem eq 'SharePointOnline'",
)

request_configuration = AccessPackageResourceEnvironmentsRequestBuilder.AccessPackageResourceEnvironmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_resource_environments.get(request_configuration = request_configuration)


```