---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.channels.item.channel_item_request_builder import ChannelItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ChannelItemRequestBuilder.ChannelItemRequestBuilderGetQueryParameters(
		select = ["summary"],
)

request_configuration = ChannelItemRequestBuilder.ChannelItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').get(request_configuration = request_configuration)


```