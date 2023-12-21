---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = B2xIdentityUserFlow(
	id = "UserFlowWithAPIConnector",
	user_flow_type = UserFlowType.SignUpOrSignIn,
	user_flow_type_version = 1,
	api_connector_configuration = UserFlowApiConnectorConfiguration(
		post_federation_signup = IdentityApiConnector(
			additional_data = {
					"@odata_id" : "https://graph.microsoft.com/v1/identity/apiConnectors/{id}",
			}
		),
		post_attribute_collection = IdentityApiConnector(
			additional_data = {
					"@odata_id" : "https://graph.microsoft.com/v1/identity/apiConnectors/{id}",
			}
		),
	),
)

result = await graph_client.identity.b2x_user_flows.post(request_body)


```