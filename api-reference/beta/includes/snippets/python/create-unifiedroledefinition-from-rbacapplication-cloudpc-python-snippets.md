---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleDefinition()
request_body.description = 'An example custom role'

request_body.display_name = 'ExampleCustomRole'

role_permissions_unified_role_permission1 = UnifiedRolePermission()
role_permissions_unified_role_permission1.AllowedResourceActions(['Microsoft.CloudPC/CloudPCs/Read', ])


rolePermissionsArray []= rolePermissionsUnifiedRolePermission1;
request_body.rolepermissions(rolePermissionsArray)


additional_data = [
'condition' => 'null', 
];
request_body.additional_data(additional_data)





result = await client.role_management.cloud_p_c.role_definitions.post(request_body = request_body)


```