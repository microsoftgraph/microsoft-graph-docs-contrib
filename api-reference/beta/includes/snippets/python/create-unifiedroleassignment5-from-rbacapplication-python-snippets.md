---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_assignment import UnifiedRoleAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleAssignment(
	principal_id = "/ServicePrincipals/0451dbb9-6336-42ea-b58f-5953dc053ece",
	role_definition_id = "f66ab1ee-3cac-4d03-8a64-dadc56e563f8",
	directory_scope_id = "/AdministrativeUnits/8b532c7a-4d3e-4e99-8ffa-2dfec92c62eb",
	app_scope_id = None,
)

result = await graph_client.role_management.exchange.role_assignments.post(request_body)


```