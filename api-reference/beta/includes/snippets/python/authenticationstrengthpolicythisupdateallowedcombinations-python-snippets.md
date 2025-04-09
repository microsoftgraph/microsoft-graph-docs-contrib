---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.policies.authenticationstrengthpolicies.item.update_allowed_combinations.update_allowed_combinations_post_request_body import UpdateAllowedCombinationsPostRequestBody
from msgraph_beta.generated.models.authentication_method_modes import AuthenticationMethodModes
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpdateAllowedCombinationsPostRequestBody(
	allowed_combinations = [
		AuthenticationMethodModes.Password | AuthenticationMethodModes.Voice,
	],
)

result = await graph_client.policies.authentication_strength_policies.by_authentication_strength_policy_id('authenticationStrengthPolicy-id').update_allowed_combinations.post(request_body)


```