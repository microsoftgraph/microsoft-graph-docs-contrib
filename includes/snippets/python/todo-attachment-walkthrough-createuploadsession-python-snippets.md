---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CreateUploadSessionPostRequestBody()
attachment_info = AttachmentInfo()
attachment_info.attachmenttype(AttachmentType.File('attachmenttype.file'))

attachment_info.name = 'flower'

attachment_info.Size = 3483322


request_body.attachment_info = attachment_info



result = await client.me.todo.lists.by_list_id('todoTaskList-id').tasks.by_task_id('todoTask-id').attachments.create_upload_session.post(request_body = request_body)


```