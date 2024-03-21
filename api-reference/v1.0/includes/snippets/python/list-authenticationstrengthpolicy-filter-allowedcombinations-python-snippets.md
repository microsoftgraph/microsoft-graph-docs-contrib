---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.policies.authenticationStrengthPolicies.authentication_strength_policies_request_builder import AuthenticationStrengthPoliciesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AuthenticationStrengthPoliciesRequestBuilder.AuthenticationStrengthPoliciesRequestBuilderGetQueryParameters(
		filter = "allowedCombinations/any(x:x has 'sms, password')",
)

request_configuration = AuthenticationStrengthPoliciesRequestBuilder.AuthenticationStrengthPoliciesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.authentication_strength_policies.get(request_configuration = request_configuration)


```