---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = TeamsTabItemRequestBuilder.TeamsTabItemRequestBuilderGetQueryParameters(
		expand = ["teamsApp"],
)

request_configuration = TeamsTabItemRequestBuilder.TeamsTabItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').tabs.by_teams_tab_id('teamsTab-id').get(request_configuration = request_configuration)


```