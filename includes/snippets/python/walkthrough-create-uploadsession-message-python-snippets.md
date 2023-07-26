---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CreateUploadSessionPostRequestBody()
attachment_item = AttachmentItem()
attachment_item.attachmenttype(AttachmentType.File('attachmenttype.file'))

attachment_item.name = 'flower'

attachment_item.Size = 3483322


request_body.attachment_item = attachment_item



result = await client.me.messages.by_message_id('message-id').attachments.create_upload_session.post(request_body = request_body)


```