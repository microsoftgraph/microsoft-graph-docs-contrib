---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignment()
request_body.principal_id = '679a9213-c497-48a4-830a-8d3d25d94ddc'

request_body.role_definition_id = 'ae79f266-94d4-4dab-b730-feca7e132178'

request_body.app_scope_id = '/AccessPackageCatalog/beedadfe-01d5-4025-910b-84abb9369997'




result = await client.role_management.entitlement_management.role_assignments.post(request_body = request_body)


```