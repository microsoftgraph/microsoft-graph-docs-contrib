---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.chats.item.messages.messages_request_builder import MessagesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
		top = 2,
		orderby = ["createdDateTime desc"],
)

request_configuration = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.chats.by_chat_id('chat-id').messages.get(request_configuration = request_configuration)


```