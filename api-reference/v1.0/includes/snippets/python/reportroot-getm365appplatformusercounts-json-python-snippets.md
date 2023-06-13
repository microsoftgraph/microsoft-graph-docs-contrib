---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = GetM365AppPlatformUserCountsWithPeriodRequestBuilder.GetM365AppPlatformUserCountsWithPeriodRequestBuilderGetQueryParameters(
		format = "application/json",
)

request_configuration = GetM365AppPlatformUserCountsWithPeriodRequestBuilder.GetM365AppPlatformUserCountsWithPeriodRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


await client.reports.get_m365_app_platform_user_counts(period='{period}'.get(request_configuration = request_configuration)


```