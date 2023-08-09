---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MeetingRegistrant()
request_body.@odata_type = '#microsoft.graph.meetingRegistrant'

request_body.first_name = 'Frederick'

request_body.last_name = 'Cormier'

request_body.email = 'frederick.cormier@contoso.com'

custom_question_answers_custom_question_answer1 = CustomQuestionAnswer()
custom_question_answers_custom_question_answer1.question_id = 'MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU='

custom_question_answers_custom_question_answer1.value = 'No'


customQuestionAnswersArray []= customQuestionAnswersCustomQuestionAnswer1;
custom_question_answers_custom_question_answer2 = CustomQuestionAnswer()
custom_question_answers_custom_question_answer2.question_id = 'MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8='

custom_question_answers_custom_question_answer2.value = 'Internet'


customQuestionAnswersArray []= customQuestionAnswersCustomQuestionAnswer2;
request_body.customquestionanswers(customQuestionAnswersArray)





result = await client.users.by_user_id('user-id').online_meetings.by_online_meeting_id('onlineMeeting-id').registration.registrants.post(request_body = request_body)


```