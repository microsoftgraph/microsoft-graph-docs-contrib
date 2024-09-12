---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.todo_task_list import TodoTaskList
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TodoTaskList(
	display_name = "Vacation Plan",
)

result = await graph_client.me.todo.lists.by_todo_task_list_id('todoTaskList-id').patch(request_body)


```