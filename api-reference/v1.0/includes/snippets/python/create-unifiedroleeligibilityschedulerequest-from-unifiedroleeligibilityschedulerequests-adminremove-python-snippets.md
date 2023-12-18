---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleEligibilityScheduleRequest(
	action = UnifiedRoleScheduleRequestActions.AdminRemove,
	role_definition_id = "8424c6f0-a189-499e-bbd0-26c1753c96d4",
	directory_scope_id = "/",
	principal_id = "071cc716-8147-4397-a5ba-b2105951cc0b",
)

result = await graph_client.role_management.directory.role_eligibility_schedule_requests.post(request_body)


```