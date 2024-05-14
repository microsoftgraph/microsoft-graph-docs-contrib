---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_request import AccessPackageAssignmentRequest
from msgraph.generated.models.access_package_assignment import AccessPackageAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentRequest(
	request_type = "UserAdd",
	access_package_assignment = AccessPackageAssignment(
		access_package_id = "a914b616-e04e-476b-aa37-91038f0b165b",
	),
	justification = "Need access to New Hire access package",
)

result = await graph_client.identity_governance.entitlement_management.assignment_requests.post(request_body)


```