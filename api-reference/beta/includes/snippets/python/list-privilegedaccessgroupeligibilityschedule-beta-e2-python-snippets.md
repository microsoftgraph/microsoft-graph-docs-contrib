---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = EligibilitySchedulesRequestBuilder.EligibilitySchedulesRequestBuilderGetQueryParameters(
		select = ["accessId","principalId","groupId"],
)

request_configuration = EligibilitySchedulesRequestBuilder.EligibilitySchedulesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.privileged_access.group.eligibility_schedules.get(request_configuration = request_configuration)


```