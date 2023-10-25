---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = TodoTaskList(
	display_name = "Vacation Plan",
)

result = await graph_client.me.todo.lists.by_list_id('todoTaskList-id').patch(body = request_body)


```