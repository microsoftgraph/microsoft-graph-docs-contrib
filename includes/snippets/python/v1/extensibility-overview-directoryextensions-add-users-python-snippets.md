---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.user import User
from msgraph.generated.models.password_profile import PasswordProfile
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = User(
	account_enabled = True,
	display_name = "Adele Vance",
	mail_nickname = "AdeleV",
	user_principal_name = "AdeleV@contoso.com",
	password_profile = PasswordProfile(
		force_change_password_next_sign_in = False,
		password = "xWwvJ]6NMw+bWH-d",
	),
	additional_data = {
			"extension_b7d8e648520f41d3b9c0fdeb91768a0a_job_group_tracker" : "JobGroupN",
	}
)

result = await graph_client.users.post(request_body)


```