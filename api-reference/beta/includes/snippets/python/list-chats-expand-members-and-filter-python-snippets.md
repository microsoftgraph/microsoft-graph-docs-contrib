---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.chats.chats_request_builder import ChatsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ChatsRequestBuilder.ChatsRequestBuilderGetQueryParameters(
		expand = ["members"],
		filter = "members/any(o: o/displayname eq 'Peter Parker')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').chats.get(request_configuration = request_configuration)


```