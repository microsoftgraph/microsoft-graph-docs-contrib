---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ApiConnectorConfigurationRequestBuilder.ApiConnectorConfigurationRequestBuilderGetQueryParameters(
		expand = ["postFederationSignup","postAttributeCollection"],
)

request_configuration = ApiConnectorConfigurationRequestBuilder.ApiConnectorConfigurationRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity.b2x_user_flows.by_b2x_user_flow_id('b2xIdentityUserFlow-id').api_connector_configuration.get(request_configuration = request_configuration)


```