---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.meeting_registrant import MeetingRegistrant
from msgraph.generated.models.custom_question_answer import CustomQuestionAnswer

graph_client = GraphServiceClient(credentials, scopes)

request_body = MeetingRegistrant(
	odata_type = "#microsoft.graph.meetingRegistrant",
	first_name = "Lisa",
	last_name = "Adkins",
	email = "lisa.adkins@contoso.com",
	custom_question_answers = [
		CustomQuestionAnswer(
			question_id = "MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU=",
			value = "No",
		),
		CustomQuestionAnswer(
			question_id = "MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8=",
			value = "Internet",
		),
	],
)

result = await graph_client.users.by_user_id('user-id').online_meetings.by_online_meeting_id('onlineMeeting-id').registration.registrants.post(request_body)


```