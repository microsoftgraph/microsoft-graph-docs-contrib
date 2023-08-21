---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MeetingRegistrationQuestion()
request_body.answerinputtype(AnswerInputType.RadioButton('answerinputtype.radiobutton'))

request_body.AnswerOptions(['Software Engineer', 'Software Development Manager', 'Product Manager', 'Data scientist', 'Other', ])




result = await client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').registration.custom_questions.by_custom_question_id('meetingRegistrationQuestion-id').patch(request_body = request_body)


```