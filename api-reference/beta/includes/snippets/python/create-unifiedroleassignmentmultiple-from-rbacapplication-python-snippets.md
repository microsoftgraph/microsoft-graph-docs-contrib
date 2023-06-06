---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignmentMultiple()
request_body.@odata_type = '#microsoft.graph.unifiedRoleAssignmentMultiple'

request_body.display_name = 'My test role assignment 1'

request_body.role_definition_id = 'c2cf284d-6c41-4e6b-afac-4b80928c9034'

request_body.PrincipalIds(['f8ca5a85-489a-49a0-b555-0a6d81e56f0d', 'c1518aa9-4da5-4c84-a902-a31404023890', ])

request_body.DirectoryScopeIds(['28ca5a85-489a-49a0-b555-0a6d81e56f0d', '8152656a-cf9a-4928-a457-1512d4cae295', ])




result = await client.role_management.device_management.role_assignments.post(request_body = request_body)


```