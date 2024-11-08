---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.meeting_registration_question import MeetingRegistrationQuestion
from msgraph_beta.generated.models.answer_input_type import AnswerInputType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MeetingRegistrationQuestion(
	answer_input_type = AnswerInputType.RadioButton,
	answer_options = [
		"Software Engineer",
		"Software Development Manager",
		"Product Manager",
		"Data scientist",
		"Other",
	],
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').registration.custom_questions.by_meeting_registration_question_id('meetingRegistrationQuestion-id').patch(request_body)


```