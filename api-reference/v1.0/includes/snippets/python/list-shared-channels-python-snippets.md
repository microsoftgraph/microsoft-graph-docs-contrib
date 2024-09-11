---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.teams.item.channels.channels_request_builder import ChannelsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ChannelsRequestBuilder.ChannelsRequestBuilderGetQueryParameters(
		filter = "membershipType eq 'shared'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').channels.get(request_configuration = request_configuration)


```