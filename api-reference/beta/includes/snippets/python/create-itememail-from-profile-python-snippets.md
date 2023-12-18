---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemEmail(
	address = "Innocenty.Popov@adventureworks.com",
)

result = await graph_client.me.profile.emails.post(request_body)


```