---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleAssignmentMultiple(
	display_name = "NewName",
	description = "A new roleAssignment",
)

result = await graph_client.role_management.cloud_p_c.role_assignments.by_unified_role_assignment_multiple_id('unifiedRoleAssignmentMultiple-id').patch(request_body)


```