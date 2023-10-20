---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = UserSource(
	email = "admin@M365x809305.onmicrosoft.com",
	included_sources = SourceType.Mailbox | SourceType.Site,
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').legal_holds.by_legal_hold_id('ediscoveryHoldPolicy-id').user_sources.post(body = request_body)


```