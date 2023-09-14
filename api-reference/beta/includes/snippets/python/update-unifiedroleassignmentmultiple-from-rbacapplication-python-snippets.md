---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignmentMultiple(
	principal_ids = [
		"0aeec2c1-fee7-4e02-b534-6f920d25b300",
		"2d5386a7-732f-44db-9cf8-f82dd2a1c0e0",
	]
)

result = await graph_client.role_management.device_management.role_assignments.by_role_assignment_id('unifiedRoleAssignmentMultiple-id').patch(body = request_body)


```