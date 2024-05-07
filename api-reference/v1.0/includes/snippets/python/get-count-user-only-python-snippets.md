---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.groups.item.members.graph.user.count.count_request_builder import CountRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = CountRequestBuilder.CountRequestBuilderGetRequestConfiguration()
request_configuration.headers.add("ConsistencyLevel", "eventual")


await graph_client.groups.by_group_id('group-id').members.graph_user.count.get(request_configuration = request_configuration)


```