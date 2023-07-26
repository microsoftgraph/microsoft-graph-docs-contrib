---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReviewSet()
request_body.display_name = 'My Reviewset 3'




result = await client.compliance.ediscovery.cases.by_case_id('case-id').review_sets.post(request_body = request_body)


```