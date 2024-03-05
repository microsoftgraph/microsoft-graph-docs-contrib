---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user import User
from msgraph.generated.models.password_profile import PasswordProfile

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	account_enabled = True,
	display_name = "MyTestUser1",
	mail_nickname = "MyTestUser1",
	user_principal_name = "MyTestUser1@contoso.com",
	password_profile = PasswordProfile(
		force_change_password_next_sign_in = True,
		password = "Contoso1234",
	),
)

result = await graph_client.users.post(request_body)


```