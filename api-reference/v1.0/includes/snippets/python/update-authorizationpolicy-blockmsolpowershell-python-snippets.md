---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthorizationPolicy(
	block_msol_power_shell = True,
)

result = await graph_client.policies.authorization_policy.patch(request_body)


```