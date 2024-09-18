---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.count.count_request_builder import CountRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = RequestConfiguration()
request_configuration.headers.add("ConsistencyLevel", "eventual")


await graph_client.users.count.get(request_configuration = request_configuration)


```