---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Event()
location = Location()
location.display_name = 'Conf Room 2'


request_body.location = location



result = await client.groups.by_group_id('group-id').calendar.events.by_event_id('event-id').patch(request_body = request_body)


```