---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_assignment_request import AccessPackageAssignmentRequest
from msgraph_beta.generated.models.access_package_assignment import AccessPackageAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentRequest(
	request_type = "UserAdd",
	access_package_assignment = AccessPackageAssignment(
		access_package_id = "a914b616-e04e-476b-aa37-91038f0b165b",
	),
	justification = "Need access to New Hire access package",
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_requests.post(request_body)


```