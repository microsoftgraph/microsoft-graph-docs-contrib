---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UserSource()
request_body.email = 'megan@contoso.com'

request_body.includedsources(SourceType.Mailbox, site('sourcetype.mailbox, site'))




result = await client.compliance.ediscovery.cases.by_case_id('case-id').custodians.by_custodian_id('custodian-id').user_sources.post(request_body = request_body)


```