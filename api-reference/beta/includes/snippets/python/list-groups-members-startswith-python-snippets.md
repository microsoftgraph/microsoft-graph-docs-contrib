---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.groups.item.members.members_request_builder import MembersRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = MembersRequestBuilder.MembersRequestBuilderGetQueryParameters(
		count = True,
		filter = "startswith(displayName, 'a')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.groups.by_group_id('group-id').members.get(request_configuration = request_configuration)


```