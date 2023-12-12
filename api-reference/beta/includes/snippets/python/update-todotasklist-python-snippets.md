---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = TodoTaskList(
	display_name = "Vacation Plan",
)

result = await graph_client.me.todo.lists.by_todo_task_list_id('todoTaskList-id').patch(request_body)


```