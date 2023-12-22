---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalMeetingRegistrant(
	odata_type = "#microsoft.graph.externalMeetingRegistrant",
	id = "30494ab7-7338-4592-bfec-a4333be2a0a6",
	tenant_id = "909c6581-5130-43e9-88f3-fcb3582cde37",
	user_id = "cc515404-b55c-466e-b896-992c918ecc01",
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').registration.registrants.post(request_body)


```