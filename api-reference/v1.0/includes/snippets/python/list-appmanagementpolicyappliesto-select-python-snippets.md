---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AppliesToRequestBuilder.AppliesToRequestBuilderGetQueryParameters(
		select = ["id","appId","displayName","createdDateTime"],
)

request_configuration = AppliesToRequestBuilder.AppliesToRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.policies.app_management_policies.by_app_management_policie_id('appManagementPolicy-id').applie_to.get(request_configuration = request_configuration)


```