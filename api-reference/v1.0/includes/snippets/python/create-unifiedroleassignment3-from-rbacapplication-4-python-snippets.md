---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_assignment import UnifiedRoleAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleAssignment(
	principal_id = "679a9213-c497-48a4-830a-8d3d25d94ddc",
	role_definition_id = "ae79f266-94d4-4dab-b730-feca7e132178",
	app_scope_id = "/AccessPackageCatalog/beedadfe-01d5-4025-910b-84abb9369997",
)

result = await graph_client.role_management.entitlement_management.role_assignments.post(request_body)


```