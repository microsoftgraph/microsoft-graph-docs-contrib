---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = TaskFileAttachment(
	odata_type = "#microsoft.graph.taskFileAttachment",
	name = "smile",
	content_bytes = base64.urlsafe_b64decode("a0b1c76de9f7="),
	content_type = "image/gif",
)

result = await graph_client.me.todo.lists.by_todo_task_list_id('todoTaskList-id').tasks.by_todo_task_id('todoTask-id').attachments.post(request_body)


```