---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = TemporaryAccessPassAuthenticationMethod(
	start_date_time = "2022-06-05T00:00:00.000Z",
	lifetime_in_minutes = 60,
	is_usable_once = False,
)

result = await graph_client.users.by_user_id('user-id').authentication.temporary_access_pass_methods.post(request_body)


```