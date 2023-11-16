---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = B2xIdentityUserFlow(
	id = "Partner",
	user_flow_type = UserFlowType.SignUpOrSignIn,
	user_flow_type_version = 1,
	identity_providers = [
		IdentityProvider(
			id = "Facebook-OAuth",
			type = "Facebook",
			name = "Facebook",
		),
	],
)

result = await graph_client.identity.b2x_user_flows.post(request_body)


```