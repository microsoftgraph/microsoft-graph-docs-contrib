---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = MeetingRegistration(
	subject = "Microsoft Ignite: Day 1",
	start_date_time = "2021-11-02T08:00:00-08:00",
	end_date_time = "2021-11-02T15:45:00-08:00",
	speakers = [
		MeetingSpeaker(
			display_name = "Henry Ross",
			bio = "Chairman and Chief Executive Officer",
		),
		MeetingSpeaker(
			display_name = "Fred Ryan",
			bio = "CVP",
		),
	],
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').registration.patch(request_body)


```