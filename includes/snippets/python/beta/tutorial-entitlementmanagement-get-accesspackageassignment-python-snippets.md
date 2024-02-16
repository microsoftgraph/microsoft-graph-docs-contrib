---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.entitlementManagement.accessPackageAssignments.access_package_assignments_request_builder import AccessPackageAssignmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageAssignmentsRequestBuilder.AccessPackageAssignmentsRequestBuilderGetQueryParameters(
		filter = "accessPackageAssignmentPolicy/Id eq 'db440482-1210-4a60-9b55-3ac7a72f63ba'",
		expand = ["target","accessPackageAssignmentResourceRoles"],
)

request_configuration = AccessPackageAssignmentsRequestBuilder.AccessPackageAssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignments.get(request_configuration = request_configuration)


```