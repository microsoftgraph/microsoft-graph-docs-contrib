---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TaskFileAttachment()
request_body.@odata_type = '#microsoft.graph.taskFileAttachment'

request_body.name = 'smile'

request_body.ContentBytes(base64_decode('a0b1c76de9f7='))

request_body.content_type = 'image/gif'




result = await client.me.todo.lists.by_list_id('todoTaskList-id').tasks.by_task_id('todoTask-id').attachments.post(request_body = request_body)


```