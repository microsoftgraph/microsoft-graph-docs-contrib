---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleDefinition()
request_body.description = 'Update basic properties of application registrations'

request_body.display_name = 'Application Registration Support Administrator'

role_permissions_unified_role_permission1 = UnifiedRolePermission()
role_permissions_unified_role_permission1.AllowedResourceActions(['microsoft.directory/applications/basic/read', ])


rolePermissionsArray []= rolePermissionsUnifiedRolePermission1;
request_body.rolepermissions(rolePermissionsArray)


request_body.is_enabled = True




result = await client.role_management.directory.role_definitions.post(request_body = request_body)


```