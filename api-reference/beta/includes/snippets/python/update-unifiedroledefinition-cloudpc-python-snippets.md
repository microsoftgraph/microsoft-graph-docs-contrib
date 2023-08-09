---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleDefinition()
request_body.description = 'Update basic properties and permission of application registrations'

request_body.display_name = 'ExampleCustomRole'

role_permissions_unified_role_permission1 = UnifiedRolePermission()
role_permissions_unified_role_permission1.AllowedResourceActions(['Microsoft.CloudPC/CloudPCs/Read', 'Microsoft.CloudPC/CloudPCs/Reprovision', ])


rolePermissionsArray []= rolePermissionsUnifiedRolePermission1;
request_body.rolepermissions(rolePermissionsArray)





result = await client.role_management.cloud_p_c.role_definitions.by_role_definition_id('unifiedRoleDefinition-id').patch(request_body = request_body)


```