---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.groups.groups_request_builder import GroupsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = GroupsRequestBuilder.GroupsRequestBuilderGetQueryParameters(
		count = True,
		filter = "hasMembersWithLicenseErrors eq true",
		select = ["id","displayName"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.groups.get(request_configuration = request_configuration)


```