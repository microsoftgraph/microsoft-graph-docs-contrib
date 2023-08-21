---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EdiscoveryCase()
request_body.display_name = 'CONTOSO LITIGATION-005'

request_body.description = 'Project Bazooka'

request_body.external_id = '324516'




result = await client.security.cases.ediscovery_cases.post(request_body = request_body)


```