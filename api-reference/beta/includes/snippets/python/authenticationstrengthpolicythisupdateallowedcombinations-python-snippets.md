---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdateAllowedCombinationsPostRequestBody(
	allowed_combinations = [
		AuthenticationMethodModes.Password | AuthenticationMethodModes.Voice,
	],
)

result = await graph_client.policies.authentication_strength_policies.by_authentication_strength_policy_id('authenticationStrengthPolicy-id').update_allowed_combinations.post(request_body)


```