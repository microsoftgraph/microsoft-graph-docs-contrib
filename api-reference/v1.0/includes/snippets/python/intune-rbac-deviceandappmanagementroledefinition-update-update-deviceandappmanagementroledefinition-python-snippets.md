---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.device_and_app_management_role_definition import DeviceAndAppManagementRoleDefinition
from msgraph.generated.models.role_permission import RolePermission
from msgraph.generated.models.resource_action import ResourceAction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeviceAndAppManagementRoleDefinition(
	odata_type = "#microsoft.graph.deviceAndAppManagementRoleDefinition",
	display_name = "Display Name value",
	description = "Description value",
	role_permissions = [
		RolePermission(
			odata_type = "microsoft.graph.rolePermission",
			resource_actions = [
				ResourceAction(
					odata_type = "microsoft.graph.resourceAction",
					allowed_resource_actions = [
						"Allowed Resource Actions value",
					],
					not_allowed_resource_actions = [
						"Not Allowed Resource Actions value",
					],
				),
			],
		),
	],
	is_built_in = True,
)

result = await graph_client.device_management.role_definitions.by_role_definition_id('roleDefinition-id').patch(request_body)


```