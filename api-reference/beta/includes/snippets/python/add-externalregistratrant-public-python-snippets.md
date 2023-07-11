---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExternalMeetingRegistrant()
request_body.@odata_type = '#microsoft.graph.externalMeetingRegistrant'

request_body.id = '9d96988d-a66a-46ce-aad7-0b245615b297'




result = await client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').registration.registrants.post(request_body = request_body)


```