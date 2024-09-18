---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity_governance.entitlement_management.access_package_assignments.access_package_assignments_request_builder import AccessPackageAssignmentsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageAssignmentsRequestBuilder.AccessPackageAssignmentsRequestBuilderGetQueryParameters(
		filter = "accessPackageAssignmentPolicy/Id eq 'db440482-1210-4a60-9b55-3ac7a72f63ba'",
		expand = ["target","accessPackageAssignmentResourceRoles"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignments.get(request_configuration = request_configuration)


```