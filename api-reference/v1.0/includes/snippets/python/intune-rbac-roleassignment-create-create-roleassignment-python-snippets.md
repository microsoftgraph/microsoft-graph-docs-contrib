---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.role_assignment import RoleAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = RoleAssignment(
	odata_type = "#microsoft.graph.roleAssignment",
	display_name = "Display Name value",
	description = "Description value",
	resource_scopes = [
		"Resource Scopes value",
	],
)

result = await graph_client.device_management.role_definitions.by_role_definition_id('roleDefinition-id').role_assignments.post(request_body)


```