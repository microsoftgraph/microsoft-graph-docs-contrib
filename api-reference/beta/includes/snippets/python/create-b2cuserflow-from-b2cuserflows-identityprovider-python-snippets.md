---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity.b2c_user_flows.b2c_user_flows_request_builder import B2cUserFlowsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.b2c_identity_user_flow import B2cIdentityUserFlow
from msgraph_beta.generated.models.user_flow_type import UserFlowType
from msgraph_beta.generated.models.identity_provider import IdentityProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = B2cIdentityUserFlow(
	id = "Customer",
	user_flow_type = UserFlowType.SignUpOrSignIn,
	user_flow_type_version = 3,
	identity_providers = [
		IdentityProvider(
			id = "Facebook-OAuth",
		),
	],
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Location", "https://graph.microsoft.com/beta/identity/b2cUserFlows('B2C_1_Customer')")


result = await graph_client.identity.b2c_user_flows.post(request_body, request_configuration = request_configuration)


```