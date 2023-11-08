---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ClaimsMappingPolicy(
	display_name = "UpdateClaimsPolicy",
)

result = await graph_client.policies.claims_mapping_policies.by_claims_mapping_policy_id('claimsMappingPolicy-id').patch(request_body)


```