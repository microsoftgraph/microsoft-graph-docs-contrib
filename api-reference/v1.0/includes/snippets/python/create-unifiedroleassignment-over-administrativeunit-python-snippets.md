---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_assignment import UnifiedRoleAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleAssignment(
	odata_type = "#microsoft.graph.unifiedRoleAssignment",
	role_definition_id = "fe930be7-5e62-47db-91af-98c3a49a38b1",
	principal_id = "f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
	directory_scope_id = "/administrativeUnits/5d107bba-d8e2-4e13-b6ae-884be90e5d1a",
)

result = await graph_client.role_management.directory.role_assignments.post(request_body)


```