---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.messages.item.message_item_request_builder import MessageItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = MessageItemRequestBuilder.MessageItemRequestBuilderGetQueryParameters(
		select = ["internetMessageHeaders"],
)

request_configuration = MessageItemRequestBuilder.MessageItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.messages.by_message_id('message-id').get(request_configuration = request_configuration)


```