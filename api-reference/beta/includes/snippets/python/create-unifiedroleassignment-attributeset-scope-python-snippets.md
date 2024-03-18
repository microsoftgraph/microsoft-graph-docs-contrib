---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_assignment import UnifiedRoleAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleAssignment(
	odata_type = "#microsoft.graph.unifiedRoleAssignment",
	role_definition_id = "58a13ea3-c632-46ae-9ee0-9c0d43cd7f3d",
	principal_id = "f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
	directory_scope_id = "/attributeSets/Engineering",
)

result = await graph_client.role_management.directory.role_assignments.post(request_body)


```