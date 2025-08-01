---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.network_access.filtering_profiles.item.policies.policies_request_builder import PoliciesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = PoliciesRequestBuilder.PoliciesRequestBuilderGetQueryParameters(
		filter = "isof('microsoft.graph.networkaccess.securityProviderPolicyLink')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.network_access.filtering_profiles.by_filtering_profile_id('filteringProfile-id').policies.get(request_configuration = request_configuration)


```