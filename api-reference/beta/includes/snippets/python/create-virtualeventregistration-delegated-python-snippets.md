---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.virtual_event_registration import VirtualEventRegistration
from msgraph_beta.generated.models.virtual_event_registration_question_answer import VirtualEventRegistrationQuestionAnswer

graph_client = GraphServiceClient(credentials, scopes)

request_body = VirtualEventRegistration(
	preferred_timezone = "Pacific Standard Time",
	preferred_language = "en-us",
	registration_question_answers = [
		VirtualEventRegistrationQuestionAnswer(
			question_id = "95320781-96b3-4b8f-8cf8-e6561d23447a",
			value = None,
			boolean_value = None,
			multi_choice_values = [
				"Seattle",
			],
		),
		VirtualEventRegistrationQuestionAnswer(
			question_id = "4577afdb-8bee-4219-b482-04b52c6b855c",
			value = None,
			boolean_value = True,
			multi_choice_values = [
			],
		),
		VirtualEventRegistrationQuestionAnswer(
			question_id = "80fefcf1-caf7-4cd3-b8d7-159e17c47f20",
			value = None,
			boolean_value = None,
			multi_choice_values = [
				"Cancun",
				"Hoboken",
				"Beijing",
			],
		),
	],
)

result = await graph_client.solutions.virtual_events.webinars.by_virtual_event_webinar_id('virtualEventWebinar-id').registrations.post(request_body)


```