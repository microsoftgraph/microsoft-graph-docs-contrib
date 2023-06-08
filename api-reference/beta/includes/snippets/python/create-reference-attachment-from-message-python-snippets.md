---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Attachment()
request_body.@odata_type = '#microsoft.graph.referenceAttachment'

request_body.name = 'Personal pictures'

additional_data = [
'source_url' => 'https://contoso.com/personal/mario_contoso_net/Documents/Pics', 
'provider_type' => 'oneDriveConsumer', 
'permission' => 'Edit', 
'is_folder' => 'True', 
];
request_body.additional_data(additional_data)





result = await client.me.messages.by_message_id('message-id').attachments.post(request_body = request_body)


```