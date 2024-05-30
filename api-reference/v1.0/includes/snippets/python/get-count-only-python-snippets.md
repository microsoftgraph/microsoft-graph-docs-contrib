---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.groups.item.members.count.count_request_builder import CountRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = RequestConfiguration()
request_configuration.headers.add("ConsistencyLevel", "eventual")


await graph_client.groups.by_group_id('group-id').members.count.get(request_configuration = request_configuration)


```