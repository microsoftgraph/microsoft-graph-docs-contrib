---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeclinePostRequestBody()
request_body.comment = 'I won\'t be able to make this week. How about next week?'

request_body.send_response = True

proposed_new_time = TimeSlot()
proposed_new_timestart = DateTimeTimeZone()
proposed_new_timestart.date_time = '2019-12-02T18:00:00'

proposed_new_timestart.time_zone = 'Pacific Standard Time'


proposed_new_time.start = proposed_new_timestart
proposed_new_timeend = DateTimeTimeZone()
proposed_new_timeend.date_time = '2019-12-02T19:00:00'

proposed_new_timeend.time_zone = 'Pacific Standard Time'


proposed_new_time.end = proposed_new_timeend

request_body.proposed_new_time = proposed_new_time



await client.me.events.by_event_id('event-id').decline.post(request_body = request_body)


```