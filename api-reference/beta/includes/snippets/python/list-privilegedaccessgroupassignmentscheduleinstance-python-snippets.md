---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AssignmentScheduleInstancesRequestBuilder.AssignmentScheduleInstancesRequestBuilderGetQueryParameters(
		filter = "groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d'",
)

request_configuration = AssignmentScheduleInstancesRequestBuilder.AssignmentScheduleInstancesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.privileged_access.group.assignment_schedule_instances.get(request_configuration = request_configuration)


```