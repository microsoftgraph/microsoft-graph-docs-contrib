---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

query_params = ChannelRequestBuilder.ChannelRequestBuilderGetQueryParameters(
		select = ["summary"],
)

request_configuration = ChannelRequestBuilder.ChannelRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').get(request_configuration = request_configuration)


```