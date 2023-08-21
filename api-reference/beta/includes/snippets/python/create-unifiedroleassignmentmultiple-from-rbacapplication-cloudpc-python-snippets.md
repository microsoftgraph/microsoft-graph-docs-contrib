---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignmentMultiple()
request_body.@odata_type = '#microsoft.graph.unifiedRoleAssignmentMultiple'

request_body.display_name = 'My test role assignment 1'

request_body.description = 'My role assignment description'

request_body.role_definition_id = 'b5c08161-a7af-481c-ace2-a20a69a48fb1'

request_body.PrincipalIds(['f8ca5a85-489a-49a0-b555-0a6d81e56f0d', 'c1518aa9-4da5-4c84-a902-a31404023890', ])




result = await client.role_management.cloud_p_c.role_assignments.post(request_body = request_body)


```