---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.chats.item.messages.messages_request_builder import MessagesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
		top = 2,
		filter = "lastModifiedDateTime gt 2021-03-17T07:13:28.000z",
		orderby = ["createdDateTime desc"],
)

request_configuration = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').chats.by_chat_id('chat-id').messages.get(request_configuration = request_configuration)


```