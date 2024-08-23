---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.linked_resource import LinkedResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = LinkedResource(
	odata_type = "#microsoft.graph.linkedResource",
	web_url = "http://microsoft.com",
	application_name = "Microsoft",
	display_name = "Microsoft",
)

result = await graph_client.me.todo.lists.by_todo_task_list_id('todoTaskList-id').tasks.by_todo_task_id('todoTask-id').linked_resources.by_linked_resource_id('linkedResource-id').patch(request_body)


```