---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = TodoTask(
	title = "A new task",
	categories = [
		"Important",
	]
	linked_resources = [
		LinkedResource(
			web_url = "http://microsoft.com",
			application_name = "Microsoft",
			display_name = "Microsoft",
		),
	]
)

result = await graph_client.me.todo.lists.by_list_id('todoTaskList-id').tasks.post(body = request_body)


```