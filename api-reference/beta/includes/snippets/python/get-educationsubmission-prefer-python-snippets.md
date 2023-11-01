---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = EducationSubmissionItemRequestBuilder.EducationSubmissionItemRequestBuilderGetRequestConfiguration(
headers = {
		'Prefer' : "include-unknown-enum-members",
}

)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').submissions.by_education_submission_id('educationSubmission-id').get(request_configuration = request_configuration)


```