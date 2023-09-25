---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentRequest(
	request_type = "UserAdd",
	access_package_assignment = AccessPackageAssignment(
		access_package_id = "a914b616-e04e-476b-aa37-91038f0b165b",
	),
	justification = "Need access to New Hire access package",
)

result = await graph_client.identity_governance.entitlement_management.acces_package_assignment_requests.post(body = request_body)


```