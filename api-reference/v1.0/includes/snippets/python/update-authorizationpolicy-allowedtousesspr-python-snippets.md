---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.authorization_policy import AuthorizationPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthorizationPolicy(
	allowed_to_use_s_s_p_r = True,
)

result = await graph_client.policies.authorization_policy.patch(request_body)


```