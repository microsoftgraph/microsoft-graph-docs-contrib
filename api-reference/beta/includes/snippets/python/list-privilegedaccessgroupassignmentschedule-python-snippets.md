---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AssignmentSchedulesRequestBuilder.AssignmentSchedulesRequestBuilderGetQueryParameters(
		filter = "principalId eq '3cce9d87-3986-4f19-8335-7ed075408ca2'",
)

request_configuration = AssignmentSchedulesRequestBuilder.AssignmentSchedulesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.privileged_access.group.assignment_schedules.get(request_configuration = request_configuration)


```