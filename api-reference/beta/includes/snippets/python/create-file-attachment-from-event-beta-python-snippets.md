---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Attachment()
request_body.@odata_type = '#microsoft.graph.fileAttachment'

request_body.name = 'menu.txt'

additional_data = [
'content_bytes' => 'bWFjIGFuZCBjaGVlc2UgdG9kYXk=', 
];
request_body.additional_data(additional_data)





result = await client.me.events.by_event_id('event-id').attachments.post(request_body = request_body)


```