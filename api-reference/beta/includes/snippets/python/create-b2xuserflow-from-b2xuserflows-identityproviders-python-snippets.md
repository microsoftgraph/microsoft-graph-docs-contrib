---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.b2x_identity_user_flow import B2xIdentityUserFlow
from msgraph.generated.models.identity_provider import IdentityProvider

graph_client = GraphServiceClient(credentials, scopes)

request_body = B2xIdentityUserFlow(
	id = "Partner",
	user_flow_type = UserFlowType.SignUpOrSignIn,
	user_flow_type_version = 1,
	identity_providers = [
		IdentityProvider(
			id = "Facebook-OAuth",
			type = "Facebook",
			name = "Facebook",
		),
	],
)

result = await graph_client.identity.b2x_user_flows.post(request_body)


```