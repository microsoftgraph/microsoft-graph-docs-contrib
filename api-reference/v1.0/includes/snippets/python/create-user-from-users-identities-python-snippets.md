---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	display_name = "John Smith",
	identities = [
		ObjectIdentity(
			sign_in_type = "userName",
			issuer = "contoso.onmicrosoft.com",
			issuer_assigned_id = "johnsmith",
		),
		ObjectIdentity(
			sign_in_type = "emailAddress",
			issuer = "contoso.onmicrosoft.com",
			issuer_assigned_id = "jsmith@yahoo.com",
		),
		ObjectIdentity(
			sign_in_type = "federated",
			issuer = "facebook.com",
			issuer_assigned_id = "5eecb0cd",
		),
	],
	password_profile = PasswordProfile(
		password = "password-value",
		force_change_password_next_sign_in = False,
	),
	password_policies = "DisablePasswordExpiration",
)

result = await graph_client.users.post(request_body)


```