---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.schedule.time_cards.time_cards_request_builder import TimeCardsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = TimeCardsRequestBuilder.TimeCardsRequestBuilderGetQueryParameters(
		top = 2,
		filter = "state eq 'clockedOut'",
)

request_configuration = TimeCardsRequestBuilder.TimeCardsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_cards.get(request_configuration = request_configuration)


```