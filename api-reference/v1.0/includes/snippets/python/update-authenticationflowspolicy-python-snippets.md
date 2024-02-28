---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.authentication_flows_policy import AuthenticationFlowsPolicy
from msgraph.generated.models.self_service_sign_up_authentication_flow_configuration import SelfServiceSignUpAuthenticationFlowConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthenticationFlowsPolicy(
	self_service_sign_up = SelfServiceSignUpAuthenticationFlowConfiguration(
		is_enabled = True,
	),
)

result = await graph_client.policies.authentication_flows_policy.patch(request_body)


```