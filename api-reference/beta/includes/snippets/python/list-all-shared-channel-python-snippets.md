---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AllChannelsRequestBuilder.AllChannelsRequestBuilderGetQueryParameters(
		filter = "membershipType eq 'shared'",
)

request_configuration = AllChannelsRequestBuilder.AllChannelsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.teams.by_team_id('team-id').all_channels.get(request_configuration = request_configuration)


```