---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AppRoleAssignment(
	principal_id = UUID("9028d19c-26a9-4809-8e3f-20ff73e2d75e"),
	resource_id = UUID("8fce32da-1246-437b-99cd-76d1d4677bd5"),
	app_role_id = UUID("498476ce-e0fe-48b0-b801-37ba7e2685c6"),
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').app_role_assignments.post(request_body)


```