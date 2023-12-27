---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeletePasswordSingleSignOnCredentialsPostRequestBody(
	id = "5793aa3b-cca9-4794-679a240f8b58",
)

await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').delete_password_single_sign_on_credentials.post(request_body)


```