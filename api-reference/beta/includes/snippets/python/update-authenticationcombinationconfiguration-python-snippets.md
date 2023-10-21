---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AuthenticationCombinationConfiguration(
	applies_to_combinations = [
		AuthenticationMethodModes.Fido2,
	]
)

result = await graph_client.identity.conditional_access.authentication_strength.policies.by_policie_id('authenticationStrengthPolicy-id').combination_configurations.by_combination_configuration_id('authenticationCombinationConfiguration-id').patch(body = request_body)


```