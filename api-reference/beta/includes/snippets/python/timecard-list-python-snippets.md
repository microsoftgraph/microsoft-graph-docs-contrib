---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = TimeCardsRequestBuilder.TimeCardsRequestBuilderGetQueryParameters(
		top = 2,
		filter = "state eq 'clockedOut'",
)

request_configuration = TimeCardsRequestBuilder.TimeCardsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.teams.by_team_id('team-id').schedule.time_cards.get(request_configuration = request_configuration)


```