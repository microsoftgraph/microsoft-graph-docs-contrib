---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.groups.item.group_item_request_builder import GroupItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = GroupItemRequestBuilder.GroupItemRequestBuilderGetQueryParameters(
		select = ["allowExternalSenders","autoSubscribeNewMembers","isSubscribedByMail","unseenCount"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.groups.by_group_id('group-id').get(request_configuration = request_configuration)


```