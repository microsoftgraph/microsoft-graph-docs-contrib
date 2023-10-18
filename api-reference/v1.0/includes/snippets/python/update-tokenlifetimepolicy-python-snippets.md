---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = TokenLifetimePolicy(
	definition = [
		"{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"5:30:00\"}}",
	]
	display_name = "Contoso token lifetime policy",
	is_organization_default = True,
)

result = await graph_client.policies.token_lifetime_policies.by_token_lifetime_policie_id('tokenLifetimePolicy-id').patch(body = request_body)


```