---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationFeedbackResourceOutcome(
	odata_type = "#microsoft.graph.educationFeedbackResourceOutcome",
	feedback_resource = EducationWordResource(
		odata_type = "#microsoft.graph.educationWordResource",
		display_name = "Document1.docx",
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').submissions.by_education_submission_id('educationSubmission-id').outcomes.post(request_body)


```