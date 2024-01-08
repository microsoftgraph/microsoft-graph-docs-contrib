---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AppRoleAssignment(
	principal_id = UUID("040f9599-7c0f-4f94-aa75-8394c4c6ea9b"),
	principal_type = "User",
	app_role_id = UUID("3a84e31e-bffa-470f-b9e6-754a61e4dc63"),
	resource_id = UUID("a750f6cf-2319-464a-bcc3-456926736a91"),
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').app_role_assignments.post(request_body)


```