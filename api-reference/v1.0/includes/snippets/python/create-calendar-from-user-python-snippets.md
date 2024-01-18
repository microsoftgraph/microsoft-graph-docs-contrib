---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Calendar(
	name = "Volunteer",
)

result = await graph_client.me.calendars.post(request_body)


```