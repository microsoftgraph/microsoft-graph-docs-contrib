---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.unified_role_definition import UnifiedRoleDefinition
from msgraph_beta.generated.models.unified_role_permission import UnifiedRolePermission
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnifiedRoleDefinition(
	description = "Role 1 description",
	display_name = "Role 1",
	role_permissions = [
		UnifiedRolePermission(
			allowed_resource_actions = [
				"microsoft.xdr/securityposture/read",
			],
		),
	],
)

result = await graph_client.role_management.defender.role_definitions.post(request_body)


```