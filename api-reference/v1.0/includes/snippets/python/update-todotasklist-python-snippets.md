---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.todo_task_list import TodoTaskList

graph_client = GraphServiceClient(credentials, scopes)

request_body = TodoTaskList(
	display_name = "Vacation Plan",
)

result = await graph_client.me.todo.lists.by_todo_task_list_id('todoTaskList-id').patch(request_body)


```