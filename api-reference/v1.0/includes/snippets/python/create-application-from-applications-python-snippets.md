---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Application(
	display_name = "Display name",
)

result = await graph_client.applications.post(request_body)


```