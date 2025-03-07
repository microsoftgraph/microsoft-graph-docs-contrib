---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.reports.get_teams_team_counts(period='{period}').get_teams_team_counts_with_period_request_builder import GetTeamsTeamCountsWithPeriodRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GetTeamsTeamCountsWithPeriodRequestBuilder.GetTeamsTeamCountsWithPeriodRequestBuilderGetQueryParameters(
		format = "text/csv",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.reports.get_teams_team_counts_with_period("{period}").get(request_configuration = request_configuration)


```