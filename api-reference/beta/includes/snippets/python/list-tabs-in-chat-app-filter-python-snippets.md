---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.chats.item.tabs.tabs_request_builder import TabsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = TabsRequestBuilder.TabsRequestBuilderGetQueryParameters(
		expand = ["teamsApp"],
		filter = "teamsApp/id eq 'com.microsoft.teamspace.tab.web'",
)

request_configuration = TabsRequestBuilder.TabsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.chats.by_chat_id('chat-id').tabs.get(request_configuration = request_configuration)


```