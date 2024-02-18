---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.groups.item.group_item_request_builder import GroupItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = GroupItemRequestBuilder.GroupItemRequestBuilderGetQueryParameters(
		select = ["allowExternalSenders","autoSubscribeNewMembers","isSubscribedByMail","unseenCount"],
)

request_configuration = GroupItemRequestBuilder.GroupItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.groups.by_group_id('group-id').get(request_configuration = request_configuration)


```