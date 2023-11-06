---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentitySecurityDefaultsEnforcementPolicy(
	is_enabled = False,
)

result = await graph_client.policies.identity_security_defaults_enforcement_policy.patch(request_body)


```