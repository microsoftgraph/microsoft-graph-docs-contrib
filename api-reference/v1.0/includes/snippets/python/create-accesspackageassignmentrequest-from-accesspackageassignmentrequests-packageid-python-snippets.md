---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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