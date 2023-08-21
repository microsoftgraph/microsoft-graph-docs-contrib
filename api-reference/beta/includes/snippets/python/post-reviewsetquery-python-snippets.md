---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReviewSetQuery()
request_body.display_name = 'My Query 1'

request_body.query = '(subject:\"Quarterly Financials\")'




result = await client.compliance.ediscovery.cases.by_case_id('case-id').review_sets.by_review_set_id('reviewSet-id').queries.post(request_body = request_body)


```