---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthenticationStrengthPolicy(
	odata_type = "#microsoft.graph.authenticationStrengthPolicy",
	display_name = "Contoso authentication level",
	description = "The only authentication level allowed to access our secret apps",
	allowed_combinations = [
		AuthenticationMethodModes.Password | AuthenticationMethodModes.HardwareOath,
		AuthenticationMethodModes.Password | AuthenticationMethodModes.Sms,
	],
)

result = await graph_client.policies.authentication_strength_policies.post(request_body)


```