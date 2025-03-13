---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.role_assignment import RoleAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RoleAssignment(
	odata_type = "#microsoft.graph.roleAssignment",
	display_name = "Display Name value",
	description = "Description value",
	resource_scopes = [
		"Resource Scopes value",
	],
)

result = await graph_client.device_management.role_definitions.by_role_definition_id('roleDefinition-id').role_assignments.by_role_assignment_id('roleAssignment-id').patch(request_body)


```