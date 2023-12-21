---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = WebAccount(
	description = "My Github contributions!",
	user_id = "innocenty.popov",
	service = ServiceInformation(
		name = "GitHub",
		web_url = "https://github.com",
	),
)

result = await graph_client.me.profile.web_accounts.post(request_body)


```