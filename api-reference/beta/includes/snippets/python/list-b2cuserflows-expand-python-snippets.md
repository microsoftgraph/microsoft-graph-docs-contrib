---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = B2cUserFlowsRequestBuilder.B2cUserFlowsRequestBuilderGetQueryParameters(
		expand = ["identityProviders"],
)

request_configuration = B2cUserFlowsRequestBuilder.B2cUserFlowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity.b2c_user_flows.get(request_configuration = request_configuration)


```