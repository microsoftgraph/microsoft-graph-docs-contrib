---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleDefinition(
	description = "Update basic properties and permission of application registrations",
	display_name = "ExampleCustomRole",
	role_permissions = [
		UnifiedRolePermission(
			allowed_resource_actions = [
				"Microsoft.CloudPC/CloudPCs/Read",
				"Microsoft.CloudPC/CloudPCs/Reprovision",
			],
		),
	],
)

result = await graph_client.role_management.cloud_p_c.role_definitions.by_unified_role_definition_id('unifiedRoleDefinition-id').patch(request_body)


```