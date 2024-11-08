---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.meeting_registrant import MeetingRegistrant
from msgraph_beta.generated.models.custom_question_answer import CustomQuestionAnswer
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MeetingRegistrant(
	odata_type = "#microsoft.graph.meetingRegistrant",
	first_name = "Frederick",
	last_name = "Cormier",
	email = "frederick.cormier@contoso.com",
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