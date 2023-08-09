---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignment()
request_body.principal_id = '/ServicePrincipals/0451dbb9-6336-42ea-b58f-5953dc053ece'

request_body.role_definition_id = 'f66ab1ee-3cac-4d03-8a64-dadc56e563f8'

request_body.directory_scope_id = '/AdministrativeUnits/8b532c7a-4d3e-4e99-8ffa-2dfec92c62eb'

request_body.appScopeId=null




result = await client.role_management.exchange.role_assignments.post(request_body = request_body)


```