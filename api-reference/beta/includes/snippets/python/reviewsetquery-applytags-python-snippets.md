---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.compliance.ediscovery.cases.item.reviewsets.item.queries.item.microsoft_graph_ediscovery_apply_tags.apply_tags_post_request_body import ApplyTagsPostRequestBody
from msgraph_beta.generated.models.ediscovery.tag import Tag
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ApplyTagsPostRequestBody(
	tags_to_add = [
		Tag(
			id = "b4798d14-748d-468e-a1ec-96a2b1d49677",
		),
	],
)

await graph_client.compliance.ediscovery.cases.by_case_id('case-id').review_sets.by_review_set_id('reviewSet-id').queries.by_review_set_query_id('reviewSetQuery-id').microsoft_graph_ediscovery_apply_tags.post(request_body)


```