---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.windows.updates.policies.item.rings.rings_request_builder import RingsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = RingsRequestBuilder.RingsRequestBuilderGetQueryParameters(
		filter = "isof('microsoft.graph.windowsUpdates.qualityUpdateRing')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.admin.windows.updates.policies.by_policy_id('policy-id').rings.get(request_configuration = request_configuration)


```