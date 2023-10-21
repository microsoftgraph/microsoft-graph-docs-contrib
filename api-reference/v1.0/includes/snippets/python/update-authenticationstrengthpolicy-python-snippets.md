---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AuthenticationStrengthPolicy(
	odata_type = "#microsoft.graph.authenticationStrengthPolicy",
	display_name = "FIDO2 only",
	description = "An auth strength allowing only FIDO2 security keys.",
)

result = await graph_client.policies.authentication_strength_policies.by_authentication_strength_policie_id('authenticationStrengthPolicy-id').patch(body = request_body)


```