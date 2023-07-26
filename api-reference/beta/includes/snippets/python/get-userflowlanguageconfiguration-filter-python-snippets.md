---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = LanguagesRequestBuilder.LanguagesRequestBuilderGetQueryParameters(
		filter = "isEnabled eq true",
)

request_configuration = LanguagesRequestBuilder.LanguagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity.b2c_user_flows.by_b2c_user_flow_id('b2cIdentityUserFlow-id').languages.get(request_configuration = request_configuration)


```