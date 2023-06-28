---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = GetTeamsTeamCountsWithPeriodRequestBuilder.GetTeamsTeamCountsWithPeriodRequestBuilderGetQueryParameters(
		format = "text/csv",
)

request_configuration = GetTeamsTeamCountsWithPeriodRequestBuilder.GetTeamsTeamCountsWithPeriodRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


await client.reports.get_team_team_counts(period='{period}'.get(request_configuration = request_configuration)


```