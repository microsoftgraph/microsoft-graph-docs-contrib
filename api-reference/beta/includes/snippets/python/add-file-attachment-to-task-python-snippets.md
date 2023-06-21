---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = FileAttachment()
request_body.@odata_type = '#microsoft.graph.fileAttachment'

request_body.name = 'menu.txt'

request_body.ContentBytes(base64_decode('bWFjIGFuZCBjaGVlc2UgdG9kYXk='))




result = await client.me.outlook.tasks.by_task_id('outlookTask-id').attachments.post(request_body = request_body)


```