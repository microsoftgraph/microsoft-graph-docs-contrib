---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.member_of.graph.group.group_request_builder import GroupRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GroupRequestBuilder.GroupRequestBuilderGetQueryParameters(
		filter = "appRoleAssignments/$count gt 0",
		select = ["id","displayName"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').member_of.graph_group.get(request_configuration = request_configuration)


```