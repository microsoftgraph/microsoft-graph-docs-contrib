---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ApplyTagsPostRequestBody(
	tags_to_add = [
		EdiscoveryReviewTag(
			id = "d3d99dc704a74801b792b3e1e722aa0d",
		),
	],
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.by_ediscovery_review_set_id('ediscoveryReviewSet-id').queries.by_ediscovery_review_set_query_id('ediscoveryReviewSetQuery-id').microsoft_graph_security_apply_tags.post(request_body)


```