---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = WebAccount(
	web_url = "https://github.com/innocenty.popov",
)

result = await graph_client.me.profile.web_accounts.by_web_account_id('webAccount-id').patch(request_body)


```