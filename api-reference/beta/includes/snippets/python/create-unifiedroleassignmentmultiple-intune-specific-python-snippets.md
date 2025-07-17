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
	display_name = "My test role assignment 1",
	role_definition_id = "c2cf284d-6c41-4e6b-afac-4b80928c9034",
	principal_ids = [
		"f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
		"c1518aa9-4da5-4c84-a902-a31404023890",
	],
	app_scope_ids = [
		"allDevices",
	],
)

result = await graph_client.role_management.device_management.role_assignments.post(request_body)


```