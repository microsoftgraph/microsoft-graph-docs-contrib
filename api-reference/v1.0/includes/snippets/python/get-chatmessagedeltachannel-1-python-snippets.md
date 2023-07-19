---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		top = 2,
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.delta.get(request_configuration = request_configuration)


```