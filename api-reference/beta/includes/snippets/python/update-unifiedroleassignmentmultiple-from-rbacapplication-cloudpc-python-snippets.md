---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignmentMultiple(
	display_name = "NewName",
	description = "A new roleAssignment",
)

result = await graph_client.role_management.cloud_p_c.role_assignments.by_role_assignment_id('unifiedRoleAssignmentMultiple-id').patch(body = request_body)


```