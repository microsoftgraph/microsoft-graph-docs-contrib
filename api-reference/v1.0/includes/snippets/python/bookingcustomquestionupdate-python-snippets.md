---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = BookingCustomQuestion(
	odata_type = "#microsoft.graph.bookingCustomQuestion",
	display_name = "What is your age?",
	answer_input_type = AnswerInputType.Text,
	answer_options = [
	]
)

result = await graph_client.solutions.booking_businesses.by_booking_businesse_id('bookingBusiness-id').custom_questions.by_custom_question_id('bookingCustomQuestion-id').patch(body = request_body)


```