---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.all_channels.all_channels_request_builder import AllChannelsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AllChannelsRequestBuilder.AllChannelsRequestBuilderGetQueryParameters(
		filter = "membershipType eq 'shared'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').all_channels.get(request_configuration = request_configuration)


```