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
request_body.recurrence=null

request_body.ReminderMinutesBeforeStart = 99

request_body.is_online_meeting = True

request_body.onlinemeetingprovider(OnlineMeetingProviderType.TeamsForBusiness('onlinemeetingprovidertype.teamsforbusiness'))

request_body.is_reminder_on = True

request_body.hide_attendees = False

request_body.Categories(['Red category', ])




result = await client.me.events.by_event_id('event-id').patch(request_body = request_body)


```