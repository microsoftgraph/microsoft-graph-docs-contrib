---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.virtual_event_registration_custom_question import VirtualEventRegistrationCustomQuestion
from msgraph.generated.models.virtual_event_registration_question_answer_input_type import VirtualEventRegistrationQuestionAnswerInputType

graph_client = GraphServiceClient(credentials, scopes)

request_body = VirtualEventRegistrationCustomQuestion(
	odata_type = "#microsoft.graph.virtualEventRegistrationCustomQuestion",
	display_name = "What's your job position?",
	answer_input_type = VirtualEventRegistrationQuestionAnswerInputType.MultiChoice,
	answer_choices = [
		"Software Engineer",
		"Engineer Manager",
		"Product Manager",
	],
)

result = await graph_client.solutions.virtual_events.webinars.by_virtual_event_webinar_id('virtualEventWebinar-id').registration_configuration.questions.post(request_body)


```