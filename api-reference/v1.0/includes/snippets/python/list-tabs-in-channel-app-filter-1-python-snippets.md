---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.channels.item.tabs.tabs_request_builder import TabsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = TabsRequestBuilder.TabsRequestBuilderGetQueryParameters(
		expand = ["teamsApp"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').tabs.get(request_configuration = request_configuration)


```