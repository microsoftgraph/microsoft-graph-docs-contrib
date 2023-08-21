---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OnlineMeeting()
request_body.startDateTime = DateTime('2019-07-12T14:30:34.2444915-07:00')

request_body.endDateTime = DateTime('2019-07-12T15:00:34.2464912-07:00')

request_body.subject = 'User Token Meeting'




result = await client.me.online_meetings.post(request_body = request_body)


```