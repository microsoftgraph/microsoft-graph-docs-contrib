---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.groups.item.member_of.graph.group.group_request_builder import GroupRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = GroupRequestBuilder.GroupRequestBuilderGetQueryParameters(
		count = True,
		orderby = ["displayName"],
		filter = "startswith(displayName, 'A')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.groups.by_group_id('group-id').member_of.graph_group.get(request_configuration = request_configuration)


```