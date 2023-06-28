---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RoleDefinition()
request_body.@odata_type = '#microsoft.graph.roleDefinition'

request_body.display_name = 'Display Name value'

request_body.description = 'Description value'

role_permissions_role_permission1 = RolePermission()
role_permissions_role_permission1.@odata_type = 'microsoft.graph.rolePermission'

resource_actions_resource_action1 = ResourceAction()
resource_actions_resource_action1.@odata_type = 'microsoft.graph.resourceAction'

resource_actions_resource_action1.AllowedResourceActions(['Allowed Resource Actions value', ])

resource_actions_resource_action1.NotAllowedResourceActions(['Not Allowed Resource Actions value', ])


resourceActionsArray []= resourceActionsResourceAction1;
role_permissions_role_permission1.resourceactions(resourceActionsArray)



rolePermissionsArray []= rolePermissionsRolePermission1;
request_body.rolepermissions(rolePermissionsArray)


request_body.is_built_in = True




result = await client.device_management.role_definitions.by_role_definition_id('roleDefinition-id').patch(request_body = request_body)


```