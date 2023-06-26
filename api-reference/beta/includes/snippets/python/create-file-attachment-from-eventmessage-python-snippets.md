---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Attachment()
request_body.@odata_type = '#Microsoft.OutlookServices.FileAttachment'

request_body.name = 'name-value'

request_body.content_type = 'contentType-value'

request_body.is_inline = False

additional_data = [
'content_location' => 'contentLocation-value', 
'content_bytes' => 'contentBytes-value', 
];
request_body.additional_data(additional_data)





result = await client.me.messages.by_message_id('message-id').attachments.post(request_body = request_body)


```