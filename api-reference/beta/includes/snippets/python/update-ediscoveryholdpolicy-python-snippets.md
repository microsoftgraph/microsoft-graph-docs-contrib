---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EdiscoveryHoldPolicy()
request_body.description = 'updated description'




result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').legal_holds.by_legal_hold_id('ediscoveryHoldPolicy-id').patch(request_body = request_body)


```