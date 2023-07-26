---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ItemAttachment()
request_body.@odata_type = '#microsoft.graph.itemAttachment'

request_body.name = 'Holiday event'

item = Event()
item.@odata_type = 'microsoft.graph.event'

item.subject = 'Discuss gifts for children'

itembody = ItemBody()
itembody.contenttype(BodyType.HTML('bodytype.html'))

itembody.content = 'Let\'s look for funding!'


item.body = itembody
itemstart = DateTimeTimeZone()
itemstart.date_time = '2016-12-02T18:00:00'

itemstart.time_zone = 'Pacific Standard Time'


item.start = itemstart
itemend = DateTimeTimeZone()
itemend.date_time = '2016-12-02T19:00:00'

itemend.time_zone = 'Pacific Standard Time'


item.end = itemend

request_body.item = item



result = await client.me.events.by_event_id('event-id').attachments.post(request_body = request_body)


```