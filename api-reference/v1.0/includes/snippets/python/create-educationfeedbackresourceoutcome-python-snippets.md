---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_feedback_resource_outcome import EducationFeedbackResourceOutcome
from msgraph.generated.models.education_word_resource import EducationWordResource

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