---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.groups.item.members.graph.user.user_request_builder import UserRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = UserRequestBuilder.UserRequestBuilderGetQueryParameters(
		count = True,
		orderby = ["displayName"],
		search = "\"displayName:Pr\"",
		select = ["displayName","id"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.groups.by_group_id('group-id').members.graph_user.get(request_configuration = request_configuration)


```