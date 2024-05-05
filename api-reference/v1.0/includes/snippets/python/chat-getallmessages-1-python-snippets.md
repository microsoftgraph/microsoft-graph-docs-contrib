---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.chats.get_all_messages.get_all_messages_request_builder import GetAllMessagesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = GetAllMessagesRequestBuilder.GetAllMessagesRequestBuilderGetQueryParameters(
		top = 2,
)

request_configuration = GetAllMessagesRequestBuilder.GetAllMessagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').chats.get_all_messages.get(request_configuration = request_configuration)


```