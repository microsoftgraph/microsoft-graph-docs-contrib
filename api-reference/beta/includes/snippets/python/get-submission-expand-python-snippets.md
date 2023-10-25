---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

query_params = EducationSubmissionRequestBuilder.EducationSubmissionRequestBuilderGetQueryParameters(
		expand = ["*"],
)

request_configuration = EducationSubmissionRequestBuilder.EducationSubmissionRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').submissions.by_submission_id('educationSubmission-id').get(request_configuration = request_configuration)


```