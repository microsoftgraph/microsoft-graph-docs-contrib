---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = WebAccount(
	web_url = "https://github.com/innocenty.popov",
)

result = await graph_client.me.profile.web_accounts.by_web_account_id('webAccount-id').patch(request_body)


```