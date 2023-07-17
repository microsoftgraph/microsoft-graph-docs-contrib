---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationFeedbackResourceOutcome()
request_body.@odata_type = '#microsoft.graph.educationFeedbackResourceOutcome'

feedback_resource = EducationWordResource()
feedback_resource.@odata_type = '#microsoft.graph.educationWordResource'

feedback_resource.display_name = 'Document1.docx'


request_body.feedback_resource = feedback_resource



result = await client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').submissions.by_submission_id('educationSubmission-id').outcomes.post(request_body = request_body)


```