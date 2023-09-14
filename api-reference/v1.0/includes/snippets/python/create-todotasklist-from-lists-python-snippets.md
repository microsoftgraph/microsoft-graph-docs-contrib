---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = TodoTaskList(
	display_name = "Travel items",
)

result = await graph_client.me.todo.lists.post(body = request_body)


```