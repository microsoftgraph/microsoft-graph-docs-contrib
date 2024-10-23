---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.virtual_event_registration_custom_question import VirtualEventRegistrationCustomQuestion
from msgraph_beta.generated.models.virtual_event_registration_question_answer_input_type import VirtualEventRegistrationQuestionAnswerInputType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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