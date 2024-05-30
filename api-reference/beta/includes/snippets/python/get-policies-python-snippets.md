---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity.conditional_access.policies.policies_request_builder import PoliciesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = PoliciesRequestBuilder.PoliciesRequestBuilderGetQueryParameters(
		filter = "displayName eq 'SimplePolicy1' or displayName eq 'SimplePolicy2'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.conditional_access.policies.get(request_configuration = request_configuration)


```