---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = PrivilegedAccessGroupAssignmentScheduleRequestRequestBuilder.PrivilegedAccessGroupAssignmentScheduleRequestRequestBuilderGetQueryParameters(
		filter = "status eq 'PendingApproval' and groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc'",
)

request_configuration = PrivilegedAccessGroupAssignmentScheduleRequestRequestBuilder.PrivilegedAccessGroupAssignmentScheduleRequestRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.privileged_access.group.assignment_schedule_requests.by_assignment_schedule_request_id('privilegedAccessGroupAssignmentScheduleRequest-id').get(request_configuration = request_configuration)


```