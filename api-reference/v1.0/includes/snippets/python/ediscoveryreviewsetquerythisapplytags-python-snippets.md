---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.cases.ediscoverycases.item.reviewsets.item.queries.item.microsoft_graph_security_apply_tags.apply_tags_post_request_body import ApplyTagsPostRequestBody
from msgraph.generated.models.security.ediscovery_review_tag import EdiscoveryReviewTag
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ApplyTagsPostRequestBody(
	tags_to_add = [
		EdiscoveryReviewTag(
			id = "d3d99dc704a74801b792b3e1e722aa0d",
		),
	],
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.by_ediscovery_review_set_id('ediscoveryReviewSet-id').queries.by_ediscovery_review_set_query_id('ediscoveryReviewSetQuery-id').microsoft_graph_security_apply_tags.post(request_body)


```