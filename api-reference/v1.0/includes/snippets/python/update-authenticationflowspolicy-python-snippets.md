---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthenticationFlowsPolicy(
	self_service_sign_up = SelfServiceSignUpAuthenticationFlowConfiguration(
		is_enabled = True,
	),
)

result = await graph_client.policies.authentication_flows_policy.patch(request_body)


```