---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = LegalHold()
request_body.@odata_type = '#microsoft.graph.ediscovery.legalHold'

request_body.description = 'String'

created_by = IdentitySet()
created_by.@odata_type = 'microsoft.graph.identitySet'


request_body.created_by = created_by
request_body.is_enabled = Boolean

request_body.status(LegalHoldStatus.String('legalholdstatus.string'))

request_body.content_query = 'String'

request_body.Errors(['String', ])

request_body.display_name = 'String'




result = await client.compliance.ediscovery.cases.by_case_id('case-id').legal_holds.post(request_body = request_body)


```