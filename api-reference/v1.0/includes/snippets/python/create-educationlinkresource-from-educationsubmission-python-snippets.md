---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationSubmissionResource(
	resource = EducationLinkResource(
		display_name = "Wikipedia",
		link = "https://en.wikipedia.org/wiki/Main_Page",
		odata_type = "#microsoft.graph.educationLinkResource",
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').submissions.by_education_submission_id('educationSubmission-id').resources.post(request_body)


```