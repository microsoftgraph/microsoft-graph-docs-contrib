---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = CancelPostRequestBody(
	additional_data = {
			"id" : "request-id",
			"request_status" : "cancelled",
	}
)

await graph_client.identity_governance.entitlement_management.acce_package_assignment_requests.by_acce_package_assignment_request_id('accessPackageAssignmentRequest-id').cancel.post(body = request_body)


```