---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = FileAttachment()
request_body.@odata_type = 'microsoft.graph.fileAttachment'

request_body.name = 'name-value'

request_body.content_type = 'contentType-value'

request_body.is_inline = False

request_body.content_location = 'contentLocation-value'

request_body.ContentBytes(base64_decode('base64-contentBytes-value'))




result = await client.me.messages.by_message_id('message-id').attachments.post(request_body = request_body)


```