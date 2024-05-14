---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.security.cases.ediscoverycases.item.reviewsets.item.microsoft_graph_security_add_to_review_set.add_to_review_set_post_request_body import AddToReviewSetPostRequestBody
from msgraph.generated.models.ediscovery_search import EdiscoverySearch

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddToReviewSetPostRequestBody(
	search = EdiscoverySearch(
		id = "c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7",
	),
	additional_data_options = AdditionalDataOptions.LinkedFiles,
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.by_ediscovery_review_set_id('ediscoveryReviewSet-id').microsoft_graph_security_add_to_review_set.post(request_body)


```