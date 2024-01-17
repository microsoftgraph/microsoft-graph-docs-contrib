---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemPhone(
	display_name = "Car Phone",
	number = "+7 499 342 22 13",
)

result = await graph_client.me.profile.phones.post(request_body)


```