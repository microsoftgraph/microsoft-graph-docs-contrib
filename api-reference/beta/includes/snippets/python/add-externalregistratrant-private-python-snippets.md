---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExternalMeetingRegistrant()
request_body.@odata_type = '#microsoft.graph.externalMeetingRegistrant'

request_body.id = '30494ab7-7338-4592-bfec-a4333be2a0a6'

request_body.tenant_id = '909c6581-5130-43e9-88f3-fcb3582cde37'

request_body.user_id = 'cc515404-b55c-466e-b896-992c918ecc01'




result = await client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').registration.registrants.post(request_body = request_body)


```