---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OnlineMeeting()
request_body.startDateTime = DateTime('2020-09-09T14:33:30.8546353-07:00')

request_body.endDateTime = DateTime('2020-09-09T15:03:30.8566356-07:00')

request_body.subject = 'Patch Meeting Subject'




result = await client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').patch(request_body = request_body)


```