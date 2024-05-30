---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.linked_resource import LinkedResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = LinkedResource(
	web_url = "https://microsoft.com",
	application_name = "Microsoft",
	display_name = "Microsoft",
	external_id = "dk9cddce2-dce2-f9dd-e2dc-cdf9e2dccdf9",
)

result = await graph_client.me.todo.lists.by_todo_task_list_id('todoTaskList-id').tasks.by_todo_task_id('todoTask-id').linked_resources.post(request_body)


```