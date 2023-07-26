---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RoleAssignment()
request_body.@odata_type = '#microsoft.graph.roleAssignment'

request_body.display_name = 'Display Name value'

request_body.description = 'Description value'

request_body.ResourceScopes(['Resource Scopes value', ])




result = await client.device_management.role_definitions.by_role_definition_id('roleDefinition-id').role_assignments.by_role_assignment_id('roleAssignment-id').patch(request_body = request_body)


```