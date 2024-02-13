---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_assignment import UnifiedRoleAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleAssignment(
	odata_type = "#microsoft.graph.unifiedRoleAssignment",
	role_definition_id = "c2cf284d-6c41-4e6b-afac-4b80928c9034",
	principal_id = "f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
	directory_scope_id = "/",
)

result = await graph_client.role_management.directory.role_assignments.post(request_body)


```