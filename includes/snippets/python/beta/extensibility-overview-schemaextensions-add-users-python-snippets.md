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
	display_name = "Adele Vance",
	mail_nickname = "AdeleV",
	user_principal_name = "AdeleV@contoso.com",
	password_profile = PasswordProfile(
		force_change_password_next_sign_in = False,
		password = "xWwvJ]6NMw+bWH-d",
	),
	additional_data = {
			"extkmpdyld2_graph_learn_courses" : {
					"course_id" : 100,
					"course_name" : "Explore Microsoft Graph",
					"course_type" : "Online",
			},
	}
)

result = await graph_client.users.post(request_body)


```