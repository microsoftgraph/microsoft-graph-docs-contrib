---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.network_access.filtering_policies.item.filtering_policy_item_request_builder import FilteringPolicyItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = FilteringPolicyItemRequestBuilder.FilteringPolicyItemRequestBuilderGetQueryParameters(
		expand = ["policyRules"],
)

request_configuration = FilteringPolicyItemRequestBuilder.FilteringPolicyItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.network_access.filtering_policies.by_filtering_policy_id('filteringPolicy-id').get(request_configuration = request_configuration)


```