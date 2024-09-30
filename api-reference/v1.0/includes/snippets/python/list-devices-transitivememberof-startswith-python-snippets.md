---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devices.item.transitive_member_of.graph.group.group_request_builder import GroupRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GroupRequestBuilder.GroupRequestBuilderGetQueryParameters(
		count = True,
		orderby = ["displayName"],
		filter = "startswith(displayName, 'a')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.devices.by_device_id('device-id').transitive_member_of.graph_group.get(request_configuration = request_configuration)


```