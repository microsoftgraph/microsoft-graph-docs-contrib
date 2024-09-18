---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.policies.authentication_strength_policies.authentication_strength_policies_request_builder import AuthenticationStrengthPoliciesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AuthenticationStrengthPoliciesRequestBuilder.AuthenticationStrengthPoliciesRequestBuilderGetQueryParameters(
		filter = "allowedCombinations/any(x:x has 'sms, password')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.authentication_strength_policies.get(request_configuration = request_configuration)


```