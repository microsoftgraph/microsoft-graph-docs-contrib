---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identity.b2x_user_flows.item.api_connector_configuration.api_connector_configuration_request_builder import ApiConnectorConfigurationRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ApiConnectorConfigurationRequestBuilder.ApiConnectorConfigurationRequestBuilderGetQueryParameters(
		expand = ["postFederationSignup","postAttributeCollection"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.b2x_user_flows.by_b2x_identity_user_flow_id('b2xIdentityUserFlow-id').api_connector_configuration.get(request_configuration = request_configuration)


```