---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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

request_configuration = B2cUserFlowsRequestBuilder.B2cUserFlowsRequestBuilderPostRequestConfiguration(
headers = {
		'Location' : "https://graph.microsoft.com/beta/identity/b2cUserFlows('B2C_1_Customer')",
}

)

result = await graph_client.identity.b2c_user_flows.post(request_body, request_configuration = request_configuration)


```