---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AddToReviewSetPostRequestBody()
search = EdiscoverySearch()
search.id = 'c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7'


request_body.search = search
request_body.additionaldataoptions(AdditionalDataOptions.LinkedFiles('additionaldataoptions.linkedfiles'))




await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.by_review_set_id('ediscoveryReviewSet-id').microsoft_graph_security_add_to_review_set.post(request_body = request_body)


```