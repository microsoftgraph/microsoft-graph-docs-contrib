---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.chats.chats_request_builder import ChatsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ChatsRequestBuilder.ChatsRequestBuilderGetQueryParameters(
		expand = ["lastMessagePreview"],
)

request_configuration = ChatsRequestBuilder.ChatsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.chats.get(request_configuration = request_configuration)


```