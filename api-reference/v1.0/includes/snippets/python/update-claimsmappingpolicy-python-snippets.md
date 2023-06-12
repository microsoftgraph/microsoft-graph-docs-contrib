---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ClaimsMappingPolicy()
request_body.display_name = 'UpdateClaimsPolicy'




result = await client.policies.claim_mapping_policies.by_claim_mapping_policie_id('claimsMappingPolicy-id').patch(request_body = request_body)


```