---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthorizationPolicy(
	block_msol_power_shell = True,
)

result = await graph_client.policies.authorization_policy.by_authorization_policy_id('authorizationPolicy-id').patch(request_body)


```