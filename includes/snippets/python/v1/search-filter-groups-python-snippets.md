---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.groups.groups_request_builder import GroupsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = GroupsRequestBuilder.GroupsRequestBuilderGetQueryParameters(
		filter = "mailEnabled eq true",
		search = "\"displayName:OneVideo\"",
)

request_configuration = GroupsRequestBuilder.GroupsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.groups.get(request_configuration = request_configuration)


```