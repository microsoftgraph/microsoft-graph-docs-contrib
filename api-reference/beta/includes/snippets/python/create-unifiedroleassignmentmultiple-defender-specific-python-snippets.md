---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.unified_role_assignment_multiple import UnifiedRoleAssignmentMultiple
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnifiedRoleAssignmentMultiple(
	odata_type = "#microsoft.graph.unifiedRoleAssignmentMultiple",
	display_name = "Example role assignment",
	role_definition_id = "b5c08161-a7af-481c-ace2-a20a69a48fb1",
	principal_ids = [
		"8e811502-ebda-4782-8f81-071d17f0f892",
		"30e3492f-964c-4d73-88c6-986a53c6e2a0",
	],
	app_scope_ids = [
		"Mdc",
		"/CloudSet/123",
	],
)

result = await graph_client.role_management.defender.role_assignments.post(request_body)


```