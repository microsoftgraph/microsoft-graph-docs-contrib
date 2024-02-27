---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.channels.getAllMessages.get_all_messages_request_builder import GetAllMessagesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = GetAllMessagesRequestBuilder.GetAllMessagesRequestBuilderGetQueryParameters(
		filter = "lastModifiedDateTime gt 2019-11-01T00:00:00Z and lastModifiedDateTime lt 2021-11-01T00:00:00Z",
)

request_configuration = GetAllMessagesRequestBuilder.GetAllMessagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').channels.get_all_messages.get(request_configuration = request_configuration)


```