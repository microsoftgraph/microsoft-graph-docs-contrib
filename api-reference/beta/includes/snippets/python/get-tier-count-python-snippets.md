---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.groups.item.transitiveMembers.graph.user.user_request_builder import UserRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = UserRequestBuilder.UserRequestBuilderGetQueryParameters(
		count = True,
		orderby = ["displayName"],
		search = "\"displayName:tier\"",
		select = ["displayName","id"],
)

request_configuration = UserRequestBuilder.UserRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.groups.by_group_id('group-id').transitive_members.graph_user.get(request_configuration = request_configuration)


```