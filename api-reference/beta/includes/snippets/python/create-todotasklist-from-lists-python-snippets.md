---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = TodoTaskList(
	display_name = "Travel items",
)

result = await graph_client.me.todo.lists.post(request_body)


```