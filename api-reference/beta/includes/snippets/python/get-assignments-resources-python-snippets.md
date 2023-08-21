---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AssignmentsRequestBuilder.AssignmentsRequestBuilderGetQueryParameters(
		expand = ["resources"],
)

request_configuration = AssignmentsRequestBuilder.AssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.education.classes.by_classe_id('educationClass-id').assignments.get(request_configuration = request_configuration)


```