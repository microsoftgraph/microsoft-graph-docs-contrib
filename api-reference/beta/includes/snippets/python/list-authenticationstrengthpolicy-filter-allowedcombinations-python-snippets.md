---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.policies.authentication_strength_policies.authentication_strength_policies_request_builder import AuthenticationStrengthPoliciesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AuthenticationStrengthPoliciesRequestBuilder.AuthenticationStrengthPoliciesRequestBuilderGetQueryParameters(
		filter = "allowedCombinations/any(x:x has 'sms, password')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.authentication_strength_policies.get(request_configuration = request_configuration)


```