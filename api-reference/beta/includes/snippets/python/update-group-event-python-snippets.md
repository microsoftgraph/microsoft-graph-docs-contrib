---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Event()
request_body.original_start_time_zone = 'originalStartTimeZone-value'

request_body.original_end_time_zone = 'originalEndTimeZone-value'

response_status = ResponseStatus()
response_status.response(ResponseType.None('responsetype.none'))

response_status.time = DateTime('datetime-value')


request_body.response_status = response_status
request_body.uid = 'iCalUId-value'

request_body.ReminderMinutesBeforeStart = 99

request_body.is_reminder_on = True




result = await client.groups.by_group_id('group-id').events.by_event_id('event-id').patch(request_body = request_body)


```