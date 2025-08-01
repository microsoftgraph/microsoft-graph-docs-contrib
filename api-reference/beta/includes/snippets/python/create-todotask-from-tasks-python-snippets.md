---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.todo_task import TodoTask
from msgraph_beta.generated.models.linked_resource import LinkedResource
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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