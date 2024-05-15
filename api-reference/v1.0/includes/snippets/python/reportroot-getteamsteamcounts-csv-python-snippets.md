---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.reports.get_teams_team_counts(period='{period}').get_teams_team_counts_with_period_request_builder import GetTeamsTeamCountsWithPeriodRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = GetTeamsTeamCountsWithPeriodRequestBuilder.GetTeamsTeamCountsWithPeriodRequestBuilderGetQueryParameters(
		format = "text/csv",
)

request_configuration = GetTeamsTeamCountsWithPeriodRequestBuilder.GetTeamsTeamCountsWithPeriodRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

await graph_client.reports.get_teams_team_counts_with_period("{period}").get(request_configuration = request_configuration)


```