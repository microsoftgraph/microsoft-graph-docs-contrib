---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UserSource()
request_body.email = 'adelev@contoso.com'

request_body.includedsources(SourceType.Mailbox('sourcetype.mailbox'))




result = await client.compliance.ediscovery.cases.by_case_id('case-id').legal_holds.by_legal_hold_id('legalHold-id').user_sources.post(request_body = request_body)


```