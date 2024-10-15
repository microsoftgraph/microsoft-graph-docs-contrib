---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_feedback_resource_outcome import EducationFeedbackResourceOutcome
from msgraph_beta.generated.models.education_word_resource import EducationWordResource
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationFeedbackResourceOutcome(
	odata_type = "#microsoft.graph.educationFeedbackResourceOutcome",
	feedback_resource = EducationWordResource(
		odata_type = "#microsoft.graph.educationWordResource",
		display_name = "Document1.docx",
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').submissions.by_education_submission_id('educationSubmission-id').outcomes.post(request_body)


```