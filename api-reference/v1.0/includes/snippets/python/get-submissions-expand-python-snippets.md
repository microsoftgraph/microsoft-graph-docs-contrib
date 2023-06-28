---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = SubmissionsRequestBuilder.SubmissionsRequestBuilderGetQueryParameters(
		expand = ["outcomes"],
)

request_configuration = SubmissionsRequestBuilder.SubmissionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').submissions.get(request_configuration = request_configuration)


```