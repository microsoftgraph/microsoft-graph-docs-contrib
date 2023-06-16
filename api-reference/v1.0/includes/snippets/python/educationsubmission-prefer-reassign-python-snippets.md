---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)


request_configuration = ReassignRequestBuilder.ReassignRequestBuilderPostRequestConfiguration(
headers = {
		'Prefer' : "include-unknown-enum-members",
}

)


result = await client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').submissions.by_submission_id('educationSubmission-id').reassign.post(request_configuration = request_configuration)


```