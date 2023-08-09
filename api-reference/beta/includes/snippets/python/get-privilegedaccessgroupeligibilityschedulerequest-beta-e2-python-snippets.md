---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = PrivilegedAccessGroupEligibilityScheduleRequestRequestBuilder.PrivilegedAccessGroupEligibilityScheduleRequestRequestBuilderGetQueryParameters(
		select = ["principalId","action","groupId"],
)

request_configuration = PrivilegedAccessGroupEligibilityScheduleRequestRequestBuilder.PrivilegedAccessGroupEligibilityScheduleRequestRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.privileged_access.group.eligibility_schedule_requests.by_eligibility_schedule_request_id('privilegedAccessGroupEligibilityScheduleRequest-id').get(request_configuration = request_configuration)


```