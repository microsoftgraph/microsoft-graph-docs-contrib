---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = LinkedResource(
	web_url = "https://microsoft.com",
	application_name = "Microsoft",
	display_name = "Microsoft",
	external_id = "dk9cddce2-dce2-f9dd-e2dc-cdf9e2dccdf9",
)

result = await graph_client.me.todo.lists.by_list_id('todoTaskList-id').tasks.by_task_id('todoTask-id').linked_resources.post(body = request_body)


```