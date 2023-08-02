---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UserSource()
request_body.email = 'admin@M365x809305.onmicrosoft.com'

request_body.includedsources(SourceType.Mailbox, site('sourcetype.mailbox, site'))




result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').legal_holds.by_legal_hold_id('ediscoveryHoldPolicy-id').user_sources.post(request_body = request_body)


```