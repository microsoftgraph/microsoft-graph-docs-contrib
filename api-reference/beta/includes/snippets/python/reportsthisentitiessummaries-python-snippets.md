---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = EntitiesSummariesWithStartDateTimeWithEndDateTimeRequestBuilder.EntitiesSummariesWithStartDateTimeWithEndDateTimeRequestBuilderGetQueryParameters(
		filter = "trafficType  eq 'microsoft365'",
)

request_configuration = EntitiesSummariesWithStartDateTimeWithEndDateTimeRequestBuilder.EntitiesSummariesWithStartDateTimeWithEndDateTimeRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.network_access.reports.microsoft_graph_networkacces_entitie_summaries(start_date_time={start_date_time},end_date_time={end_date_time}.get(request_configuration = request_configuration)


```