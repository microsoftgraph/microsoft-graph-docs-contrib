---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user import User
from msgraph.generated.models.object_identity import ObjectIdentity
from msgraph.generated.models.password_profile import PasswordProfile

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	display_name = "John Smith",
	identities = [
		ObjectIdentity(
			sign_in_type = "userName",
			issuer = "contoso.com",
			issuer_assigned_id = "johnsmith",
		),
		ObjectIdentity(
			sign_in_type = "emailAddress",
			issuer = "contoso.com",
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