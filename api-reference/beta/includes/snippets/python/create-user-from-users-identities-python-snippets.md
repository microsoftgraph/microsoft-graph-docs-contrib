---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.user import User
from msgraph_beta.generated.models.object_identity import ObjectIdentity
from msgraph_beta.generated.models.password_profile import PasswordProfile
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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