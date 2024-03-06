---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_request import AccessPackageAssignmentRequest
from msgraph.generated.models.access_package_assignment import AccessPackageAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentRequest(
	request_type = AccessPackageRequestType.UserAdd,
	assignment = AccessPackageAssignment(
		additional_data = {
				"access_package_id" : "d7be3253-b9c6-4fab-adef-30d30de8da2b",
		}
	),
)

result = await graph_client.identity_governance.entitlement_management.assignment_requests.post(request_body)


```