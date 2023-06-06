---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = UnifiedRoleAssignmentScheduleRequestRequestBuilder.UnifiedRoleAssignmentScheduleRequestRequestBuilderGetQueryParameters(
		select = ["principalId","action","roleDefinitionId"],
		expand = ["roleDefinition","activatedUsing","principal","targetSchedule"],
)

request_configuration = UnifiedRoleAssignmentScheduleRequestRequestBuilder.UnifiedRoleAssignmentScheduleRequestRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.role_management.directory.role_assignment_schedule_requests.by_role_assignment_schedule_request_id('unifiedRoleAssignmentScheduleRequest-id').get(request_configuration = request_configuration)


```