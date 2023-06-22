---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationFeedbackOutcome()
request_body.@odata_type = '#microsoft.graph.educationFeedbackOutcome'

feedback = EducationFeedback()
feedbacktext = EducationItemBody()
feedbacktext.content = 'This is feedback for the assignment as a whole.'

feedbacktext.contenttype(BodyType.Text('bodytype.text'))


feedback.text = feedbacktext

request_body.feedback = feedback



result = await client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').submissions.by_submission_id('educationSubmission-id').outcomes.by_outcome_id('educationOutcome-id').patch(request_body = request_body)


```