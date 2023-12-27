---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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