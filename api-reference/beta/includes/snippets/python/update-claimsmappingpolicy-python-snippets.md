---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ClaimsMappingPolicy(
	display_name = "UpdateClaimsPolicy",
)

result = await graph_client.policies.claims_mapping_policies.by_claims_mapping_policy_id('claimsMappingPolicy-id').patch(request_body)


```