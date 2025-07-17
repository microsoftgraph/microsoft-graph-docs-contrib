---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.compliance.ediscovery.cases.item.reviewsets.item.microsoft_graph_ediscovery_add_to_review_set.add_to_review_set_post_request_body import AddToReviewSetPostRequestBody
from msgraph_beta.generated.models.ediscovery.source_collection import SourceCollection
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddToReviewSetPostRequestBody(
	source_collection = SourceCollection(
		id = "1a9b4145d8f84e39bc45a7f68c5c5119",
	),
	additional_data = {
			"additional_data" : "linkedFiles",
	}
)

await graph_client.compliance.ediscovery.cases.by_case_id('case-id').review_sets.by_review_set_id('reviewSet-id').microsoft_graph_ediscovery_add_to_review_set.post(request_body)


```