---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AccessPackageAssignmentRequestsRequestBuilder.AccessPackageAssignmentRequestsRequestBuilderGetQueryParameters(
		expand = ["requestor($expand=connectedOrganization)"],
		filter = "(requestState eq 'PendingApproval')",
)

request_configuration = AccessPackageAssignmentRequestsRequestBuilder.AccessPackageAssignmentRequestsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.entitlement_management.acces_package_assignment_requests.get(request_configuration = request_configuration)


```