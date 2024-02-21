---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.authentication_strength_policy import AuthenticationStrengthPolicy
from msgraph.generated.models.authentication_method_modes import AuthenticationMethodModes

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