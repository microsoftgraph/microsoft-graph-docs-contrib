---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Attachment()
request_body.@odata_type = '#microsoft.graph.fileAttachment'

request_body.name = 'smile'

additional_data = [
'content_bytes' => 'a0b1c76de9f7=', 
];
request_body.additional_data(additional_data)





result = await client.me.messages.by_message_id('message-id').attachments.post(request_body = request_body)


```