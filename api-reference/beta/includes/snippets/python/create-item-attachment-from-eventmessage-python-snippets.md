---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Attachment()
request_body.@odata_type = '#Microsoft.OutlookServices.ItemAttachment'

request_body.name = 'name-value'

additional_data = [
'item' => request_body = Item()
		request_body.@odata_type = 'microsoft.graph.message'


request_body.item = item

];
request_body.additional_data(additional_data)





result = await client.me.events.by_event_id('event-id').attachments.post(request_body = request_body)


```