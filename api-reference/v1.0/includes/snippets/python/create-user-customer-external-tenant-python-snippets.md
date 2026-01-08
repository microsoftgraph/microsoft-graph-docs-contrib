---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.user import User
from msgraph.generated.models.object_identity import ObjectIdentity
from msgraph.generated.models.password_profile import PasswordProfile
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = User(
	display_name = "Test User",
	identities = [
		ObjectIdentity(
			sign_in_type = "emailAddress",
			issuer = "contoso.onmicrosoft.com",
			issuer_assigned_id = "adelev@adatum.com",
		),
	],
	mail = "adelev@adatum.com",
	password_profile = PasswordProfile(
		password = "passwordValue",
		force_change_password_next_sign_in = True,
	),
	password_policies = "DisablePasswordExpiration",
)

result = await graph_client.users.post(request_body)


```