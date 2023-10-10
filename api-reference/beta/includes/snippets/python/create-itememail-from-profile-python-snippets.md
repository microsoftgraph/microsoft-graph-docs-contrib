---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ItemEmail(
	address = "Innocenty.Popov@adventureworks.com",
)

result = await graph_client.me.profile.emails.post(body = request_body)


```