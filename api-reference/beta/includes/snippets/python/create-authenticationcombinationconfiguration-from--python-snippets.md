---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Fido2CombinationConfiguration(
	odata_type = "#microsoft.graph.fido2CombinationConfiguration",
	allowed_a_a_g_u_i_ds = [
		"486c3b50-889c-480a-abc5-c04ef7c873e0",
		"c042882f-a621-40c8-94d3-9cde3a826fed",
		"ec454c08-4c77-4012-9d48-45f7f0fccdfb",
	],
	applies_to_combinations = [
		AuthenticationMethodModes.Fido2,
	],
)

result = await graph_client.identity.conditional_access.authentication_strength.policies.by_authentication_strength_policy_id('authenticationStrengthPolicy-id').combination_configurations.post(request_body)


```