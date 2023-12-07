---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EdiscoveryHoldPolicy(
	description = "updated description",
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').legal_holds.by_ediscovery_hold_policy_id('ediscoveryHoldPolicy-id').patch(request_body)


```