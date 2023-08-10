---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BookingCustomQuestion()
request_body.@odata_type = '#microsoft.graph.bookingCustomQuestion'

request_body.display_name = 'What is your age?'

request_body.answerinputtype(AnswerInputType.Text('answerinputtype.text'))

request_body.AnswerOptions([])




result = await client.solutions.booking_businesses.by_booking_businesse_id('bookingBusiness-id').custom_questions.post(request_body = request_body)


```