---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.memberOf.graph.group.group_request_builder import GroupRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = GroupRequestBuilder.GroupRequestBuilderGetQueryParameters(
		filter = "appRoleAssignments/$count gt 0",
		select = ["id","displayName"],
)

request_configuration = GroupRequestBuilder.GroupRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').member_of.graph_group.get(request_configuration = request_configuration)


```