---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.directory.deleted_items.graph.group.group_request_builder import GroupRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = GroupRequestBuilder.GroupRequestBuilderGetQueryParameters(
		count = True,
		orderby = ["deletedDateTime asc"],
		select = ["id","DisplayName","deletedDateTime"],
)

request_configuration = GroupRequestBuilder.GroupRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.directory.deleted_items.graph_group.get(request_configuration = request_configuration)


```