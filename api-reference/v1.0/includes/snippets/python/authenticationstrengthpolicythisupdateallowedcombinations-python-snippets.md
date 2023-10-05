---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = UpdateAllowedCombinationsPostRequestBody(
	allowed_combinations = [
		AuthenticationMethodModes.Password | AuthenticationMethodModes.Voice,
	]
)

result = await graph_client.policies.authentication_strength_policies.by_authentication_strength_policie_id('authenticationStrengthPolicy-id').update_allowed_combinations.post(body = request_body)


```