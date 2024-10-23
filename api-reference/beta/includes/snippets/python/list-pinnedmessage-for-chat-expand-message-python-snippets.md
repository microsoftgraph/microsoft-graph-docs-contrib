---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.chats.item.pinned_messages.pinned_messages_request_builder import PinnedMessagesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = PinnedMessagesRequestBuilder.PinnedMessagesRequestBuilderGetQueryParameters(
		expand = ["message"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.chats.by_chat_id('chat-id').pinned_messages.get(request_configuration = request_configuration)


```