---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EdiscoveryReviewSet()
request_body.display_name = 'My review set 2'




result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.post(request_body = request_body)


```