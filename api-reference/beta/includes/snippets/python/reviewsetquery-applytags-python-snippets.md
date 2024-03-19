---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.apply_tags_post_request_body import ApplyTagsPostRequestBody
from msgraph.generated.models.tag import Tag

graph_client = GraphServiceClient(credentials, scopes)

request_body = ApplyTagsPostRequestBody(
	tags_to_add = [
		Tag(
			id = "b4798d14-748d-468e-a1ec-96a2b1d49677",
		),
	],
)

await graph_client.compliance.ediscovery.cases.by_case_id('case-id').review_sets.by_review_set_id('reviewSet-id').queries.by_review_set_query_id('reviewSetQuery-id').microsoft_graph_ediscovery_apply_tags.post(request_body)


```