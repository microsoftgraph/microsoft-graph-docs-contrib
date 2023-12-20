---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthorizationPolicy(
	allowed_to_use_s_s_p_r = True,
)

result = await graph_client.policies.authorization_policy.patch(request_body)


```