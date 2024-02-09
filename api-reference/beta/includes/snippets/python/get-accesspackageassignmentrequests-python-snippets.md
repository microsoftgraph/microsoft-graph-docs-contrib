---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.entitlementManagement.accessPackageAssignmentRequests.access_package_assignment_requests_request_builder import AccessPackageAssignmentRequestsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageAssignmentRequestsRequestBuilder.AccessPackageAssignmentRequestsRequestBuilderGetQueryParameters(
		expand = ["requestor($expand=connectedOrganization)"],
		filter = "(requestState eq 'PendingApproval')",
)

request_configuration = AccessPackageAssignmentRequestsRequestBuilder.AccessPackageAssignmentRequestsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_requests.get(request_configuration = request_configuration)


```