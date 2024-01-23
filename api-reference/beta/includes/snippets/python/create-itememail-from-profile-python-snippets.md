---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemEmail(
	address = "Innocenty.Popov@adventureworks.com",
)

result = await graph_client.me.profile.emails.post(request_body)


```