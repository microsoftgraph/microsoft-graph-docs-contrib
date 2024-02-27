---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.authorization_policy import AuthorizationPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthorizationPolicy(
	additional_data = {
			"guest_user_role" : "2af84b1e-32c8-42b7-82bc-daa82404023b",
	}
)

result = await graph_client.policies.authorization_policy.by_authorization_policy_id('authorizationPolicy-id').patch(request_body)


```