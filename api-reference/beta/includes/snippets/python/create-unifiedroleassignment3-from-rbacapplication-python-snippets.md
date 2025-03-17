---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.unified_role_assignment import UnifiedRoleAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnifiedRoleAssignment(
	principal_id = "679a9213-c497-48a4-830a-8d3d25d94ddc",
	role_definition_id = "ae79f266-94d4-4dab-b730-feca7e132178",
	app_scope_id = "/AccessPackageCatalog/beedadfe-01d5-4025-910b-84abb9369997",
)

result = await graph_client.role_management.entitlement_management.role_assignments.post(request_body)


```