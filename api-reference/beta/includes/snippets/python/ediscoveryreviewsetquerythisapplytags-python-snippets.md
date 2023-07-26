---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ApplyTagsPostRequestBody()
tags_to_add_ediscovery_review_tag1 = EdiscoveryReviewTag()
tags_to_add_ediscovery_review_tag1.id = 'd3d99dc704a74801b792b3e1e722aa0d'


tagsToAddArray []= tagsToAddEdiscoveryReviewTag1;
request_body.tagstoadd(tagsToAddArray)





await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.by_review_set_id('ediscoveryReviewSet-id').queries.by_querie_id('ediscoveryReviewSetQuery-id').microsoft_graph_security_apply_tags.post(request_body = request_body)


```