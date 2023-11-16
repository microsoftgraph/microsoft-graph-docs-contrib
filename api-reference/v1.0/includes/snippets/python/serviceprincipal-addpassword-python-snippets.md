---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddPasswordPostRequestBody(
	password_credential = PasswordCredential(
		display_name = "Password friendly name",
	),
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').add_password.post(request_body)


```