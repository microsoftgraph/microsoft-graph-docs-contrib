---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleDefinition(
	description = "An example custom role",
	display_name = "ExampleCustomRole",
	role_permissions = [
		UnifiedRolePermission(
			allowed_resource_actions = [
				"Microsoft.CloudPC/CloudPCs/Read",
			],
		),
	],
	additional_data = {
			"condition" : "null",
	}
)

result = await graph_client.role_management.cloud_p_c.role_definitions.post(request_body)


```