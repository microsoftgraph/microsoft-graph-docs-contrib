---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AuthenticationStrengthPoliciesRequestBuilder.AuthenticationStrengthPoliciesRequestBuilderGetQueryParameters(
		filter = "allowedCombinations/any(x:x has 'sms, password')",
)

request_configuration = AuthenticationStrengthPoliciesRequestBuilder.AuthenticationStrengthPoliciesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.policies.authentication_strength_policies.get(request_configuration = request_configuration)


```