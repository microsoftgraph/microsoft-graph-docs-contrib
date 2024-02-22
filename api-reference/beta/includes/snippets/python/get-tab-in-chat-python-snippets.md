---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.chats.item.tabs.item.teams_tab_item_request_builder import TeamsTabItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = TeamsTabItemRequestBuilder.TeamsTabItemRequestBuilderGetQueryParameters(
		expand = ["teamsApp"],
)

request_configuration = TeamsTabItemRequestBuilder.TeamsTabItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.chats.by_chat_id('chat-id').tabs.by_teams_tab_id('teamsTab-id').get(request_configuration = request_configuration)


```