---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = LinkedResource(
	odata_type = "#microsoft.graph.linkedResource",
	web_url = "http://microsoft.com",
	application_name = "Microsoft",
	display_name = "Microsoft",
)

result = await graph_client.me.todo.lists.by_list_id('todoTaskList-id').tasks.by_task_id('todoTask-id').linked_resources.by_linked_resource_id('linkedResource-id').patch(body = request_body)


```