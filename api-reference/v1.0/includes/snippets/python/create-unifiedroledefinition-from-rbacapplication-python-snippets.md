---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_definition import UnifiedRoleDefinition
from msgraph.generated.models.unified_role_permission import UnifiedRolePermission
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnifiedRoleDefinition(
	description = "Update basic properties of application registrations",
	display_name = "Application Registration Support Administrator",
	role_permissions = [
		UnifiedRolePermission(
			allowed_resource_actions = [
				"microsoft.directory/applications/basic/read",
			],
		),
	],
	is_enabled = True,
)

result = await graph_client.role_management.directory.role_definitions.post(request_body)


```