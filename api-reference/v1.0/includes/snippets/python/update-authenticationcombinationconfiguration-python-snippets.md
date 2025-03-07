---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.authentication_combination_configuration import AuthenticationCombinationConfiguration
from msgraph.generated.models.authentication_method_modes import AuthenticationMethodModes
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuthenticationCombinationConfiguration(
	applies_to_combinations = [
		AuthenticationMethodModes.Fido2,
	],
)

result = await graph_client.identity.conditional_access.authentication_strength.policies.by_authentication_strength_policy_id('authenticationStrengthPolicy-id').combination_configurations.by_authentication_combination_configuration_id('authenticationCombinationConfiguration-id').patch(request_body)


```