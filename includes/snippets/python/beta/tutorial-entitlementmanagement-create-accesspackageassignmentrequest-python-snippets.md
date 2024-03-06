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
		target_id = "007d1c7e-7fa8-4e33-b678-5e437acdcddc",
		assignment_policy_id = "db440482-1210-4a60-9b55-3ac7a72f63ba",
		access_package_id = "88203d16-0e31-41d4-87b2-dd402f1435e9",
	),
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_requests.post(request_body)


```