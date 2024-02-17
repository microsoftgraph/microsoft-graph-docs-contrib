---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_assignment_multiple import UnifiedRoleAssignmentMultiple

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleAssignmentMultiple(
	odata_type = "#microsoft.graph.unifiedRoleAssignmentMultiple",
	display_name = "My test role assignment 1",
	description = "My role assignment description",
	role_definition_id = "b5c08161-a7af-481c-ace2-a20a69a48fb1",
	principal_ids = [
		"f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
		"c1518aa9-4da5-4c84-a902-a31404023890",
	],
)

result = await graph_client.role_management.cloud_p_c.role_assignments.post(request_body)


```