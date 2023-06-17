---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = PrivilegedAccessGroupEligibilityScheduleRequestBuilder.PrivilegedAccessGroupEligibilityScheduleRequestBuilderGetQueryParameters(
		filter = "groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc' and accessId eq 'member'",
)

request_configuration = PrivilegedAccessGroupEligibilityScheduleRequestBuilder.PrivilegedAccessGroupEligibilityScheduleRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.privileged_access.group.eligibility_schedules.by_eligibility_schedule_id('privilegedAccessGroupEligibilitySchedule-id').get(request_configuration = request_configuration)


```