---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.claims_mapping_policy import ClaimsMappingPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ClaimsMappingPolicy(
	display_name = "UpdateClaimsPolicy",
)

result = await graph_client.policies.claims_mapping_policies.by_claims_mapping_policy_id('claimsMappingPolicy-id').patch(request_body)


```