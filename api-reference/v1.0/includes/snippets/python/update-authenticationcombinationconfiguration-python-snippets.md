---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.authentication_combination_configuration import AuthenticationCombinationConfiguration
from msgraph.generated.models.authentication_method_modes import AuthenticationMethodModes

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthenticationCombinationConfiguration(
	applies_to_combinations = [
		AuthenticationMethodModes.Fido2,
	],
)

result = await graph_client.identity.conditional_access.authentication_strength.policies.by_authentication_strength_policy_id('authenticationStrengthPolicy-id').combination_configurations.by_authentication_combination_configuration_id('authenticationCombinationConfiguration-id').patch(request_body)


```