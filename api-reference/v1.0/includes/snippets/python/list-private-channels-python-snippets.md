---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.channels.channels_request_builder import ChannelsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ChannelsRequestBuilder.ChannelsRequestBuilderGetQueryParameters(
		filter = "membershipType eq 'private'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').channels.get(request_configuration = request_configuration)


```