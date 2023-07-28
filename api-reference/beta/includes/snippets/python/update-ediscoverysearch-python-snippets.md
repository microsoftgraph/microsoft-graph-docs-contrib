---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EdiscoverySearch()
request_body.display_name = 'Teams search'




result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').searches.by_searche_id('ediscoverySearch-id').patch(request_body = request_body)


```