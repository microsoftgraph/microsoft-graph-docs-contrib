---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EdiscoveryReviewTag()
request_body.display_name = 'My tag API'

request_body.description = 'Use Graph API to create tags'

request_body.childselectability(ChildSelectability.Many('childselectability.many'))




result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').tags.post(request_body = request_body)


```