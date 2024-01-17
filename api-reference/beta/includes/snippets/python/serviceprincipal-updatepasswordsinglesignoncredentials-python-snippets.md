---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdatePasswordSingleSignOnCredentialsPostRequestBody(
	id = "5793aa3b-cca9-4794-679a240f8b58",
	credentials = [
		Credential(
			field_id = "param_username",
			value = "myusername",
			type = "username",
		),
		Credential(
			field_id = "param_password",
			value = "pa$$w0rd",
			type = "password",
		),
	],
)

await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').update_password_single_sign_on_credentials.post(request_body)


```