---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = TokenIssuancePolicy(
	definition = [
		"definition-value",
	]
	display_name = "displayName-value",
	is_organization_default = True,
)

result = await graph_client.policies.token_issuance_policies.by_token_issuance_policie_id('tokenIssuancePolicy-id').patch(body = request_body)


```