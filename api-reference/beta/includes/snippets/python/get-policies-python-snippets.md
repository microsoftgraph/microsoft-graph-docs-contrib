---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = PoliciesRequestBuilder.PoliciesRequestBuilderGetQueryParameters(
		filter = "displayName eq 'SimplePolicy1' or displayName eq 'SimplePolicy2'",
)

request_configuration = PoliciesRequestBuilder.PoliciesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity.conditional_access.policies.get(request_configuration = request_configuration)


```