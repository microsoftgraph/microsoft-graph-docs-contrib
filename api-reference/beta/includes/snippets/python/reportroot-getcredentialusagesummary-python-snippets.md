---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = GetCredentialUsageSummaryWithPeriodRequestBuilder.GetCredentialUsageSummaryWithPeriodRequestBuilderGetQueryParameters(
		filter = "feature eq 'registration'",
)

request_configuration = GetCredentialUsageSummaryWithPeriodRequestBuilder.GetCredentialUsageSummaryWithPeriodRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.reports.get_credential_usage_summary(period='{period}'.get(request_configuration = request_configuration)


```