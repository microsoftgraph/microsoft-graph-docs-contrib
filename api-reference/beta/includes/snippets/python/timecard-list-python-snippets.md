---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teams.item.schedule.time_cards.time_cards_request_builder import TimeCardsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = TimeCardsRequestBuilder.TimeCardsRequestBuilderGetQueryParameters(
		top = 2,
		filter = "state eq 'clockedOut'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_cards.get(request_configuration = request_configuration)


```