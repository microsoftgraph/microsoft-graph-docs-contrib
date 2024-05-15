---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.count.count_request_builder import CountRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = CountRequestBuilder.CountRequestBuilderGetRequestConfiguration()
request_configuration.headers.add("ConsistencyLevel", "eventual")


await graph_client.users.count.get(request_configuration = request_configuration)


```