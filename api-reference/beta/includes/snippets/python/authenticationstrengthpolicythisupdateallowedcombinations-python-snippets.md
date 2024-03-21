---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.update_allowed_combinations_post_request_body import UpdateAllowedCombinationsPostRequestBody
from msgraph.generated.models.authentication_method_modes import AuthenticationMethodModes

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdateAllowedCombinationsPostRequestBody(
	allowed_combinations = [
		AuthenticationMethodModes.Password | AuthenticationMethodModes.Voice,
	],
)

result = await graph_client.policies.authentication_strength_policies.by_authentication_strength_policy_id('authenticationStrengthPolicy-id').update_allowed_combinations.post(request_body)


```