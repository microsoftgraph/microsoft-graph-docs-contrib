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