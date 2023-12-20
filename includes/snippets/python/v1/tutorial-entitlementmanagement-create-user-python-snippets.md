---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	account_enabled = True,
	display_name = "Requestor1",
	mail_nickname = "Requestor1",
	user_principal_name = "Requestor1@contoso.onmicrosoft.com",
	password_profile = PasswordProfile(
		force_change_password_next_sign_in = True,
		password = "Contoso1234",
	),
)

result = await graph_client.users.post(request_body)


```