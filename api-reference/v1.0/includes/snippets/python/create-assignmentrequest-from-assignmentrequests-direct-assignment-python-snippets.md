---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_request import AccessPackageAssignmentRequest

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentRequest(
	request_type = AccessPackageRequestType.AdminAdd,
	additional_data = {
			"access_package_assignment" : {
					"target" : {
							"email" : "user@contoso.com",
					},
					"assignment_policy_id" : "2264bf65-76ba-417b-a27d-54d291f0cbc8",
					"access_package_id" : "a914b616-e04e-476b-aa37-91038f0b165b",
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.assignment_requests.post(request_body)


```