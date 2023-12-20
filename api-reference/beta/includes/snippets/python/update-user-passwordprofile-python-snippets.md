---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	password_profile = PasswordProfile(
		force_change_password_next_sign_in = True,
		password = "xWwvJ]6NMw+bWH-d",
	),
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```