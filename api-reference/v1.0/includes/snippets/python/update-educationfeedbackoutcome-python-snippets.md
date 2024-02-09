---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_feedback_outcome import EducationFeedbackOutcome
from msgraph.generated.models.education_feedback import EducationFeedback
from msgraph.generated.models.education_item_body import EducationItemBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationFeedbackOutcome(
	odata_type = "#microsoft.graph.educationFeedbackOutcome",
	feedback = EducationFeedback(
		text = EducationItemBody(
			content = "This is feedback for the assignment as a whole.",
			content_type = BodyType.Text,
		),
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').submissions.by_education_submission_id('educationSubmission-id').outcomes.by_education_outcome_id('educationOutcome-id').patch(request_body)


```