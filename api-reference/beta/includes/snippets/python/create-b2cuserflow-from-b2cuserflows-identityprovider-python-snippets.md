---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity.b2c_user_flows.b2c_user_flows_request_builder import B2cUserFlowsRequestBuilder
from msgraph.generated.models.b2c_identity_user_flow import B2cIdentityUserFlow
from msgraph.generated.models.identity_provider import IdentityProvider

graph_client = GraphServiceClient(credentials, scopes)

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

request_configuration = B2cUserFlowsRequestBuilder.B2cUserFlowsRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Location", "https://graph.microsoft.com/beta/identity/b2cUserFlows('B2C_1_Customer')")


result = await graph_client.identity.b2c_user_flows.post(request_body, request_configuration = request_configuration)


```