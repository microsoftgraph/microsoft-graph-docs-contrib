---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.teams.item.channels.item.tabs.item.teams_tab_item_request_builder import TeamsTabItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = TeamsTabItemRequestBuilder.TeamsTabItemRequestBuilderGetQueryParameters(
		expand = ["teamsApp"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').tabs.by_teams_tab_id('teamsTab-id').get(request_configuration = request_configuration)


```