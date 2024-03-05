---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.identity_user_flow import IdentityUserFlow

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentityUserFlow(
	id = "Pol1",
	user_flow_type = UserFlowType.SignUpOrSignIn,
	user_flow_type_version = 1,
)

result = await graph_client.identity.user_flows.post(request_body)


```