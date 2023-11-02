---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentityUserFlow(
	id = "Pol1",
	user_flow_type = UserFlowType.SignUpOrSignIn,
	user_flow_type_version = 1,
)

result = await graph_client.identity.user_flows.post(request_body)


```