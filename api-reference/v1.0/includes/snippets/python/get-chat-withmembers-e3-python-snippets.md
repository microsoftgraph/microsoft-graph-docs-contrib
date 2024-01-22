---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = ChatItemRequestBuilder.ChatItemRequestBuilderGetQueryParameters(
		expand = ["members"],
)

request_configuration = ChatItemRequestBuilder.ChatItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.chats.by_chat_id('chat-id').get(request_configuration = request_configuration)


```