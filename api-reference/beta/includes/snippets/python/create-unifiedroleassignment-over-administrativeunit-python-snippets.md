---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignment()
request_body.@odata_type = '#microsoft.graph.unifiedRoleAssignment'

request_body.role_definition_id = 'fe930be7-5e62-47db-91af-98c3a49a38b1'

request_body.principal_id = 'f8ca5a85-489a-49a0-b555-0a6d81e56f0d'

request_body.directory_scope_id = '/administrativeUnits/5d107bba-d8e2-4e13-b6ae-884be90e5d1a'




result = await client.role_management.directory.role_assignments.post(request_body = request_body)


```