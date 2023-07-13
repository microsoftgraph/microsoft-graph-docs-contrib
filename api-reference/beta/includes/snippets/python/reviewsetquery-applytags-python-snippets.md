---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ApplyTagsPostRequestBody()
tags_to_add_tag1 = Tag()
tags_to_add_tag1.id = 'b4798d14-748d-468e-a1ec-96a2b1d49677'


tagsToAddArray []= tagsToAddTag1;
request_body.tagstoadd(tagsToAddArray)





await client.compliance.ediscovery.cases.by_case_id('case-id').review_sets.by_review_set_id('reviewSet-id').queries.by_querie_id('reviewSetQuery-id').microsoft_graph_ediscovery_apply_tags.post(request_body = request_body)


```