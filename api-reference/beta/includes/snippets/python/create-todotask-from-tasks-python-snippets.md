---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.todo_task import TodoTask
from msgraph.generated.models.linked_resource import LinkedResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = TodoTask(
	title = "A new task",
	categories = [
		"Important",
	],
	linked_resources = [
		LinkedResource(
			web_url = "http://microsoft.com",
			application_name = "Microsoft",
			display_name = "Microsoft",
		),
	],
)

result = await graph_client.me.todo.lists.by_todo_task_list_id('todoTaskList-id').tasks.post(request_body)


```