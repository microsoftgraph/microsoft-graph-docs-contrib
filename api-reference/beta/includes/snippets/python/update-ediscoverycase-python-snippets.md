---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EdiscoveryCase()
request_body.display_name = 'My Case 1 - Renamed'

request_body.description = 'Updated description'




result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').patch(request_body = request_body)


```