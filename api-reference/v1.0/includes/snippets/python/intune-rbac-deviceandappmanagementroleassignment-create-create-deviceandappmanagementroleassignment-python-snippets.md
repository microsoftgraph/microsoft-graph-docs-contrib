---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceAndAppManagementRoleAssignment()
request_body.@odata_type = '#microsoft.graph.deviceAndAppManagementRoleAssignment'

request_body.display_name = 'Display Name value'

request_body.description = 'Description value'

request_body.ResourceScopes(['Resource Scopes value', ])

request_body.Members(['Members value', ])




result = await client.device_management.role_assignments.post(request_body = request_body)


```