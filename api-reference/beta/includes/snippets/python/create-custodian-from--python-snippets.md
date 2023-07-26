---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Custodian()
request_body.email = 'AdeleV@contoso.com'

request_body.apply_hold_to_sources = True




result = await client.compliance.ediscovery.cases.by_case_id('case-id').custodians.post(request_body = request_body)


```